class Topping < ApplicationRecord
    belongs_to :pizza_toppings
    has_many :pizzas, through: :pizza_toppings
end
