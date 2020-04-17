class Order < ApplicationRecord
    has_many :pizzas
    belongs_to :user
    accepts_nested_attributes_for :pizzas

    def makePizza(pizzas)
        pizzas.map do |pizza|
            size = Size.find_by(name: pizza['sizes'])
            sauce = Sauce.find_by(name: pizza['sauces'])
            cheese = Cheese.find_by(name: pizza['cheeses'])

            toppings = pizza['toppings'].map{ |topping| Topping.find_by(name: topping) }
            
            gourmet_toppings = pizza['gourmet_toppings'].map{|gourmet_topping| GourmetTopping.find_by(name: gourmet_topping)}

            newPizza = Pizza.find_or_create_by( #Pizza.create(
            size: size,
            sauce: sauce,
            cheese: cheese,
            order_id: self.id)
            toppings.map {|topping| newPizza.toppings << topping}
            gourmet_toppings.map {|gourmet_topping| newPizza.gourmet_toppings << gourmet_topping}
            newPizza.save
            self.pizzas << newPizza
        end
    end
end
