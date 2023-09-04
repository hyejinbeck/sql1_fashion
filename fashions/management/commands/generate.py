from django.core.management.base import BaseCommand
from faker import Faker
from fashions.models import User, Category, Item, Design, Payment

class Command(BaseCommand):

    def handle(self, *args, **options):
        fake = Faker()

        # 사용자 생성
        for _ in range(50):
            User.objects.create(
                name=fake.name(),
                country=fake.country(),
                email=fake.email(),
                age=fake.random_int(min=10, max=70),
                sex=fake.random_element(elements=('MENSWEAR', 'WOMENSWEAR','KIDS', )),
            )

        # 카테고리 생성
        categories = ['skirts', 'pants', 'dresses', 'shirts','t-shirts','jackets','coats','sweaters','jeans','tops','bags','Jewerly',]
        for category_name in categories:
            category = Category.objects.create(name=category_name)
            
            # 디자인과 연결
            for _ in range(30):  # 각 카테고리당 30가지 디자인 생성
                design = Design.objects.create(
                    color=fake.color_name(),
                    customer_age=fake.random_element(elements=(10, 20, 30, 40, 50, 60, 70)),
                    mood=fake.random_element(elements=( 
                        'Feminine', 'Casual','Classic','StreetWear','Elegance','Bohemian','Minimalist',
                     )),
                )
                category.designs.add(design)

        # 아이템 생성
        for _ in range(100):
            item = Item.objects.create(
                title=fake.word().capitalize(),
                price=fake.random_int(min=15000, max=500000),
            )
            
            # 카테고리와 연결
            item.categories.add(Category.objects.order_by('?').first())

        # 결제 정보 생성
        payment_methods = ['CreditCard', 'cash', 'CacaoPay','In-storePickup']
        for _ in range(1000):
            user = User.objects.order_by('?').first()
            item = Item.objects.order_by('?').first()
            payment_method = fake.random_element(elements=payment_methods)
            
            Payment.objects.create(
                method=payment_method,
                amount=fake.random_int(min=15000, max=5000000),
                item=item,
                user=user,
            )