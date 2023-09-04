from django.db import models

class User(models.Model):
    name = models.CharField(max_length=10)
    country = models.CharField(max_length=20)
    email = models.CharField(max_length=50)
    age = models.IntegerField()
    sex = models.CharField(max_length=10)

class Category(models.Model):
    name = models.CharField(max_length=300)

class Design(models.Model):
    color = models.CharField(max_length=10)
    customer_age = models.IntegerField()
    mood = models.CharField(max_length=20)

class Item(models.Model):
    title = models.CharField(max_length=20)
    price = models.IntegerField()
    categories = models.ManyToManyField(Category, related_name='items')

class Payment(models.Model):
    method = models.CharField(max_length=10)
    amount = models.IntegerField()
    item = models.ForeignKey(Item, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)

# db.sqlite3 생성하는 방법
# python manage.py makemigrations 
# python manage.py migrate 