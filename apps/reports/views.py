from operator import contains
from re import search
from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from apps.orders.models import Item, Order
from apps.users.models import User
from django.db.models import F
from .forms import ChartSearchForm
import random
from apps.orders.admin import ItemResource
from django.http import HttpResponse

# HOME VIEW#
@login_required
def reports_list(request):  # /reports/
    # declare variables
    labels = []
    labels2 = []
    data = []
    data2 = []
    color = ['#FFD700',	'#3CB371', '#48D1CC', '#778899', '#ff4d4d','#ffff00']
    counter_list = []
    search = ""
    counter = 0
    # get search value fron input form
    search_form = ChartSearchForm(request.POST or None)
    if request.method == "POST":
        search = request.POST["search"]

    # get qs for chart - Wykres 1.
    qs = Item.objects.filter(
        itemOrder__isDone=False, itemMaterial__regex=search
    ).annotate(
        result=F("itemDimmension1")
        / 1000
        * F("itemDimmension2")
        / 1000
        * F("itemQuantity")
    )
    # pass qs to label and data for chart - Wykres 1
    for item in qs:
        if item.result > 0.001:
            labels.append(
                item.itemOrder.orderName + "-" + item.itemName + "-" + item.itemMaterial
            )  # labels for chart
            data.append(round(item.result, 2))  # data for chart with rounded values
            color.append(
                "#%06x" % random.randint(0, 0xFFFFFF)
            )  # random color for chart
            

    # get qs for chart - Wykres 2.
    qs2 = Order.objects.all()
    qs3 = User.objects.all()

    # prepare labels list for chart - Wykres 2
    for user in qs3:
        labels2.append(str(user.username))

    # prepare data list for chart - Wykres 2
    for user in labels2:
        for order in qs2:
            if user == order.orderManager.username:  # check if user is manager of order
                counter += 1
        counter_list.append(counter)  # count for first user then second user etc.
        counter = 0  # reset counter for next user

    # finally data for chart - Wykres 2
    data2 = counter_list

    # qs for statistic counters
    def get_surface(
        boolean,
    ):  # function to get surface of all items with a boolean value
        surface_counter = 0  # counter for sum of surfaces

        object_list = Item.objects.filter(itemOrder__isDone=boolean).annotate(
            result=F("itemDimmension1")
            / 1000
            * F("itemDimmension2")
            / 1000
            * F("itemQuantity")
        )  # calculate surface of all items with a boolean value - items in order done or not done
        # as filter pud underscores be used to access the values of the objects more on:
        # https://docs.djangoproject.com/en/4.0/topics/db/queries/ #

        for i in object_list:  # loop to sum surfaces
            surface_counter += i.result  # add surface to counter
        return surface_counter  # return sum of surfaces

    context = {
        "title": "Raporty",
        "surface_counter_done": get_surface(True),
        "surface_counter_not_done": get_surface(False),
        "labels": labels,
        "labels2": labels2,
        "data": data,
        "data2": data2,
        "search_form": search_form,
        "color": color,
    }  # context for template
    return render(request, "reports/reports_list.html", context)

# EXPORT TO EXCEL#
def export(request, format):
    item_resource = ItemResource()
    dataset = item_resource.export()
    if format == "xlsx":
        dataset_format = dataset.xlsx
    else:
        dataset_format = dataset.html
    response = HttpResponse(dataset_format, content_type=f'text/{format}')
    response['Content-Disposition'] = f'attachment; filename="export.{format}"'
    return response



