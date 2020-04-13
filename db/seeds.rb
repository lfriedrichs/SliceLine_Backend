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

sauces = ['tomato', 'white', 'bbq', 'garlic olive oil']
sauces.map {|sauce| Sauce.create(name: sauce)}

cheeses = ['feta, parmesan, mozzarella, ricota']
cheeses.map {|cheese| Cheese.create(name: cheese)}

veggies = ['artichoke hearts', 'avocado', 'broccoli', 'capers', 'green peppers', 'mushrooms', 'onions', 'olives', 'roasted garlic', 'spinach', 'sun dried tomatoes', 'zucchini']
meats = ['bacon, bbq chicken, ham, meatballs, pepperoni, proscuitto, salami, sausage']
toppings = veggies + meats
toppings.map {|topping| Topping.create(name: topping)}

spices = ['basil, jalapeno peppers, oregano']
seafood = ['anchovies, shrimps, squid']
gourmetToppings = spices + seafood
gourmetToppings.map {|gourmetTopping| GourmetTopping.create(name: gourmetTopping)}






