# -*- coding: utf-8 -*-
from __future__ import unicode_literals
# Create your models here.
from django.conf import settings
from django.db import models
from django.utils import timezone


class Users(models.Model):
    id = models.AutoField(primary_key=True)
    first_name = models.TextField()
    last_name = models.TextField()
    email = models.TextField()
    gender = models.TextField()
    ip_address = models.TextField()

    class Meta:
        app_label = 'msg_system'
        db_table = 'users'


class Items(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.TextField()
    description = models.TextField()
    images = models.TextField()
    seller_id = models.IntegerField()

    class Meta:
        app_label = 'msg_system'
        db_table = 'items'


