class Order < ApplicationRecord
    has_many :pizzas
    belongs_to :user
    accepts_nested_attributes_for :pizzas

    def makePizza(pizzas)
        pizzas.map do |pizza|
            size = Size.find_by(name: pizza['size'])
            sauce = Sauce.find_by(name: pizza['sauce'])
            cheese = Cheese.find_by(name: pizza['cheese'])

            toppings = pizza['toppings'].map{ |topping| Topping.find_by(name: topping) }
            
            gourmet_toppings = pizza['gourmet_toppings'].map{|gourmet_topping| GourmetTopping.find_by(name: gourmet_topping)}

            newPizza = Pizza.create(
            size: size,
            sauce: sauce,
            cheese: cheese,
            order_id: self.id)
            toppings.map {|topping| newPizza.toppings << topping}
            gourmet_toppings.map {|gourmet_topping| newPizza.gourmet_toppings << gourmet_topping}
            newPizza.save
            self.pizzas << newPizza
        end
        # return pizzasArray
    end
end
