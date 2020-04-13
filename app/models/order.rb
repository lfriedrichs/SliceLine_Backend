class Order < ApplicationRecord
    has_many :pizzas
    belongs_to :user

    def makePizza(pizzas)
        pizzas.map do |pizza|
            newPizza = Pizza.create(cheese: pizza[:cheese],
            sauce: pizza[:sauce],
            size: pizza[:size],
            order_id: self.id)
            newPizza.toppings << pizza[:toppings]
            newPizza.gourmet_toppings << pizza[:gourmet_toppings]
            newPizza.save
        end
    end
end
