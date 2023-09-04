from django.db import models

# Create your models here.

class User(models.Model):          # 구매고객 
    name = models.CharField(max_length=10)   # 구매고객이름 
    country = models.CharField(max_length=20)   # 고객의 국적 
    email = models.CharField(max_length=50)    # 고객의 이메일주소 
    age = models.IntegerField()      # 고객의 나이 
    sex = models.CharField(max_length=10)   # 고객의 성별 

class Category(models.Model): 
    name = models.CharField(max_length=10)   # 치마,바지,원피스,속옷 등 분류
    designs = models.ManyToManyField(Design,related_name='categories')
    
class Item(models.Model): 
    title = models.CharField(max_length=20)   # 제품명 
    price = models.IntegerField()              # 금액 
	categories = models.ManyToManyField(Categoriy,related_name='items')

class Design(models.Model): 
    color = models.CharField(max_length=10)  # 색상 
    customer_age = models.IntegerField()     # 구매고객 연령대 10,20,30,40,, 
    mood = models.CharField(max_length=20)  # 페미닌,캐쥬얼,클래식 등 

class Payment(models.Model): 
    method = models.CharField(max_length=10) # 결제방식 card,cash, cacaopay 
    amount = models.IntegerField()    # 결제 금액 
    item = models.ForeignKey(Item,on_delete=models.CASCADE) # 구매제품 
    user = models.ForeignKey(User,on_delete=models.CASCADE) # 구매고객

# db.sqlite3 생성하는 방법
# python manage.py makemigrations 
# python manage.py migrate 