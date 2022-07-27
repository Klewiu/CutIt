from urllib import request
from django.http import HttpRequest, HttpResponse
from django.shortcuts import render
from django.views.generic import (
    CreateView,
    ListView,
    DeleteView,
    RedirectView,
    UpdateView,
)
from django_filters.views import FilterView

from apps.users.models import User
from .filters import OrderFilter
from apps import orders, users
from .models import Order, Item
from django.shortcuts import get_object_or_404, redirect
from django.contrib.auth.decorators import login_required
from apps.users.decorators import admin_required, manager_required, operator_required, admin_or_manager_required, admin_or_operator_required
from django.utils.decorators import method_decorator
from django.contrib import messages
from django.urls import reverse_lazy
from .forms import OrderForm
from django.core.mail import send_mail

# IMPORTS FOR PDF #
from datetime import date, datetime
from xhtml2pdf import pisa
from django.http import HttpResponse
from django.template.loader import get_template

from django.views.generic import TemplateView
from hardcopy.views import PDFViewMixin, PNGViewMixin


# Create your views here.

# passing request to form
class PassRequestToFormViewMixin:
    def get_form_kwargs(self):
        kwargs = super().get_form_kwargs()
        kwargs["request"] = self.request
        return kwargs


###ORDER VIEWS####

# CLASS - ORDER CREATE VIEW#
@method_decorator(login_required, name="dispatch")
@method_decorator(admin_or_manager_required, name="dispatch")
class OrderCreateView(PassRequestToFormViewMixin, CreateView):
    template_name = "orders/orders_create.html"
    form_class = OrderForm


# CLASS - ORDER LIST VIEW#
@method_decorator(login_required, name="dispatch")
class OrderListView(ListView):
    model = Order  # model to be used
    template_name = "orders/orders_list.html"
    ordering = ["-orderDate"]


# CLASS - ORDER FINISH VIEW#
@method_decorator(login_required, name="dispatch")
@method_decorator(admin_or_operator_required, name="dispatch")
class OrderFinishView(RedirectView):
    success_url = "/orders_list/"  # Redirect user to the list of orders

    def get(self, request, *args, **kwargs):
        #mailist setup
        admin_email = User.objects.filter(is_admin=True).values_list("email", flat=True) # gets all registered admin emails
        admin_email2 =admin_email[::1] # converts querryset into a list
        user_email = Order.objects.get(pk=kwargs["pk_order"]).orderManager.email
        maillist = admin_email2 + [user_email] #joins in one list all admin emails and order manager email
        order_name = Order.objects.get(pk=kwargs["pk_order"]).orderName
        order_number = Order.objects.get(pk=kwargs["pk_order"]).orderNumber

        order_id = self.kwargs[
            "pk_order"
        ]  # pk_order is the name of the argument in the URL
        order = get_object_or_404(Order, pk=order_id)  # Get the order object
        order.finishedBy = str(request.user)
        order.finishedDate = datetime.now()
        order.isDone = True  # Set the order to done
        order.save()  # Save the order
        
        # realize items for finished order, change isDone status to finished
        items = get_object_or_404(Order, pk=order_id).item_set.all()

        for item in items:
            item.isDone = True
            item.save()
        
        messages.success(
            request,
            "POTWIERDZENIE - Zlecenie #{} {} zostało wykonane.".format(
                order.orderNumber, order.orderName
            ),
        )  # show a success message
        #sending email
        send_mail(
            f"Realizacja Zlecenia {order_number} w CutIt",
            f' Zlecenie o nazwie: "{order_name}" oraz numerze: "{order_number}", założone w CutIt przez {user_email}, zostało zakończone.',
            "cutit.app.mail@gmail.com",
            maillist, fail_silently=True,
        )
        return redirect(self.success_url)  # Redirect to the list of orders


# CLASS - ORDER RESTORE VIEW#
@method_decorator(login_required, name="dispatch")
@method_decorator(admin_or_manager_required, name="dispatch")
class OrderRestoreView(RedirectView):
    success_url = (
        "/completed_orders_list/"  # Redirect user to the list of completed orders
    )

    def get(self, request, *args, **kwargs):
        order_id = self.kwargs[
            "pk_order"
        ]  # pk_order is the name of the argument in the URL
        order = get_object_or_404(Order, pk=order_id)  # Get the order object
        # order.pk = None # Set the order to done - will clone order
        order.isDone = False  # Set the order to not done
        order.save()
    
        # change items status for  restored order, change isDone status to false
        items = get_object_or_404(Order, pk=order_id).item_set.all()

        for item in items:
            item.isDone = False
            item.save()
        
          # Save the order
        messages.warning(
            request,
            f"UWAGA - Zlecenie # {order.orderNumber} {order.orderName} zostało przywrócone do planu cięcia.",
        )  # show a warning message using f-string
        return redirect(self.success_url)  # Redirect to the list of completed orders


# CLASS - ORDER DELETE VIEW
@method_decorator(login_required, name="dispatch")
@method_decorator(admin_or_manager_required, name="dispatch")
class OrderDeleteView(DeleteView):
    model = Order
    template_name = "orders/orders_delete.html"
    success_url = "/orders_list/"
    # usertype = User.objects.values("is_admin", "is_manager", "is_operator", "is_superuser")


# COMPLETED ORDERS VIEW#
@method_decorator(login_required, name="dispatch")
class OrderCompletedListView(FilterView):
    model = Order  # model to be used
    template_name = "orders/completed_orders_list.html"
    filterset_class = OrderFilter
    paginate_by = 10
    # query_set for dajango-filter
    def get_queryset(self):
        qs = self.model.objects.filter(isDone=True)
        search = OrderFilter(self.request.GET, queryset=qs)
        return search.qs


# ORDER UPDATE VIEW#
@method_decorator(login_required, name="dispatch")
@method_decorator(admin_or_manager_required, name="dispatch")
class OrderUpdateView(UpdateView):
    model = Order
    fields = ["orderNumber", "orderName", "orderQuantity", 'orderManager', "orderNotes"]
    template_name = "orders/orders_create.html"


###ITEM VIEWS####

# CLASS - ITEM LIST VIEW
@method_decorator(login_required, name="dispatch")
class ItemListView(ListView):
    model = Item  # model to be used
    template_name = "orders/items_list.html"  # template to be used

    def get_context_data(self, **kwargs):
        context = super().get_context_data(
            **kwargs
        )  # Get the context from the super class
        context["order"] = get_object_or_404(
            Order, pk=self.kwargs["pk_order"]
        )  # Get the order object
        return context  # Return the context


# CLASS - ITEM CREATE VIEW
@method_decorator(login_required, name="dispatch")
@method_decorator(admin_or_manager_required, name="dispatch")
class ItemCreateView(CreateView):
    model = Item
    template_name = "orders/items_create.html"
    fields = [
        "itemMaterial",
        "itemName",
        "itemQuantity",
        "itemDimmension1",
        "itemBander",
        "itemDimmension2",
        "itemBander2",
    ]

    def form_valid(self, form):
        form.instance.itemOrder = get_object_or_404(
            Order, pk=self.kwargs["pk_order"]
        )  # Get the order object
        return super(ItemCreateView, self).form_valid(form)  # Return the form valid


# CLASS - ITEM DELETE VIEW
@method_decorator(login_required, name="dispatch")
@method_decorator(admin_or_manager_required, name="dispatch")
class ItemDeleteView(DeleteView):
    model = Item
    template_name = "orders/items_delete.html"

    def get_success_url(self):  # Redirect user to the list of items
        item = get_object_or_404(
            Item, pk=self.kwargs["pk"]
        )  # Get the item object for message purpose
        messages.info(
            self.request,
            f"USNIĘTO POZYCJĘ CIĘCIA - {item.itemName} o wymiarach {item.itemDimmension1} x {item.itemDimmension2} mm",
        )  # show a success message
        return reverse_lazy(
            "page-items-list", kwargs={"pk_order": self.kwargs["pk_order"]}
        )


# CLASS - ITEM UPDATE VIEW
@method_decorator(login_required, name="dispatch")
@method_decorator(admin_or_manager_required, name="dispatch")
class ItemUpdateView(UpdateView):
    model = Item
    template_name = "orders/items_create.html"
    fields = [
        "itemMaterial",
        "itemName",
        "itemQuantity",
        "itemDimmension1",
        "itemBander",
        "itemDimmension2",
        "itemBander2",
    ]


### ADITIONAL FUNCTIONALITY ####

# PDF VIEWS#
class MyPDFView(PDFViewMixin, TemplateView):
    model = Item
    template_name = "orders/pdf.html"
    
    def get_filename(self):
        pdf_order_number = get_object_or_404(Order, pk=self.kwargs["pk_order"]).orderNumber
        return f'Plan zlecenia {pdf_order_number} w PDF.pdf'
    

    def get_context_data(self, **kwargs):
        obj = get_object_or_404(Order, pk=self.kwargs["pk_order"])
        obj2 = Item.objects.filter(itemOrder=obj)
        obj3 = datetime.now()
        context = super().get_context_data(**kwargs)
        
        context["obj"] = obj
        context["obj2"] = obj2
        context["obj3"] = obj3
        
        return context 




# @login_required
# @admin_or_manager_required
# def render_pdf_view(request, pk):
#     template_path = "orders/pdf.html"
#     obj = get_object_or_404(Order, pk=pk)
#     obj2 = Item.objects.filter(itemOrder=obj)
#     obj3 = datetime.now()

#     context = {"obj": obj, "obj2": obj2, "obj3": obj3}

#     response = HttpResponse(content_type="orders/pdf")
#     response["Content-Disposition"] = 'filename="Zlecenie {} w PDF.pdf"'.format(
#         obj.orderNumber
#     )
#     template = get_template(template_path)
#     html = template.render(context)

#     pisa_status = pisa.CreatePDF(html, dest=response)

#     if pisa_status.err:
#         return HttpResponse("We had some errors <pre>" + html + "</pre>")
#     return response


# HOME VIEW#
@login_required
def home(request):

    context = {
        "title": "Strona startowa programu",
        "orders": Order.objects.all()
        .filter(orderManager=request.user)
        .order_by("-orderDate")[:15],
    }
    return render(request, "orders/home.html", context)
