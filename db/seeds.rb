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

steven = User.create(name: 'Steven')
order = Order.create(user_id: steven.id)
cheese = Cheese.create(name: 'mozarella', image: 'url')
sauce = Sauce.create(name: 'red', image: "url")
topping = Topping.create(name: 'pepperoni', image: "url")
gourmetTopping = GourmetTopping.create(name: 'olives', image: "url")
pizza = Pizza.create(order_id: order.id, cheese_id: cheese.id, sauce_id: sauce.id, size: 'Large')
pizza.toppings << topping
pizza.gourmet_toppings << gourmetTopping




