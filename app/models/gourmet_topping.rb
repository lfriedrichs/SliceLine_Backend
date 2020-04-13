class GourmetTopping < ApplicationRecord
    has_many :pizza_gourmet_toppings
    has_many :pizzas, through: :pizza_gourmet_toppings
end
