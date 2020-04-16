# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Order.destroy_all
Cheese.destroy_all
Sauce.destroy_all
Topping.destroy_all
GourmetTopping.destroy_all
Pizza.destroy_all
Size.destroy_all

sauces = ['tomato', 'white', 'bbq', 'garlic olive oil', 'french white', 'lemon hill', 'satay']
sauces.map {|sauce| Sauce.create(name: sauce)}

cheeses = ['feta', 'parmesan', 'mozzarella', 'ricota']
cheeses.map {|cheese| Cheese.create(name: cheese)}

veggies = ['kidney beans', 'asparagus', 'celery', 'garlic', 'red pepper', 'capers', 'cherkin', 'broccoli', 'lime', 'green peppers', 'mushrooms', 'onions', 'olives', 'spinach', 'pineapples']
meats = ['bacon', 'ham', 'pepperoni', 'salami', 'sausage', 'lamb', 'chicken', 'beef', 'pork']
toppings = veggies + meats
toppings.map {|topping| Topping.create(name: topping)}
spices = ['basil', 'jalapeno peppers', 'chives', 'sundried tomatoes', 'pepper', 'parsley']
seafood = ['anchovies', 'shrimp', 'salmon']
gourmetToppings = spices + seafood
gourmetToppings.map {|gourmetTopping| GourmetTopping.create(name: gourmetTopping)}

size = ['small', 'medium', 'large']
size.map {|size| Size.create(name: size)}