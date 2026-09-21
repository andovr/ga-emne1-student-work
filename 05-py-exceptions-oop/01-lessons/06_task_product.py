class Product:
    def __init__(self, name, price):
        self.name = name
        self.price = price

    def show_info(self):
        print(f"{self.name}: {self.price:.2f}")

apple = Product("apple", 10.0)
bread = Product("bread", 35.0)
milk = Product("milk", 24.0)

apple.show_info()
bread.show_info()
milk.show_info()

milk.price = 20.0

milk.show_info()