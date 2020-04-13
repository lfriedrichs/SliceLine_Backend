class GourmetTopping < ApplicationRecord
    belongs_to :pizza_gourmet_toppings
    has_many :pizzas, through: :pizza_gourmet_toppings
end
