# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
from django.http import HttpResponse
from msg_system.models import Users, Items
from rest_framework.decorators import api_view, renderer_classes
from rest_framework.renderers import JSONRenderer
from rest_framework.response import Response
#api.py


def index(request):
    return render(request, 'items.html', {})


@api_view(('GET',))
@renderer_classes((JSONRenderer,))
def users(request):
    rows = Users.objects.all()

    if rows is None:
        context = {'error': 'No user data in db'}
        return render(request, 'items.html', context)

    columns = ['id', 'first_name', 'last_name', 'email', 'gender', 'ip_address']
    result = []
    for row in rows:
        zrow = row.id, row.first_name, row.last_name, row.email, row.gender, row.ip_address
        result.append(dict(zip(columns, zrow)))

    context = {'users': result, 'page_header': 'Users'}
    return Response(context)


@api_view(('GET',))
@renderer_classes((JSONRenderer,))
def items(request):
    rows = Items.objects.all()
    if rows is None:
        context = {'error': 'No item data in db'}
        return render(request, 'items.html', context)

    columns = ['id', 'name', 'description', 'images', 'seller_id']
    result = []
    for row in rows:
        zrow = row.id, row.name, row.description, row.images, row.seller_id
        result.append(dict(zip(columns, zrow)))

    context = {'items': result, 'page_header': 'Items'}
    return Response(context)

