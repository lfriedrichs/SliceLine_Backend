class Pizza < ApplicationRecord
    belongs_to :orders
    belongs_to :pizza_gourmet_toppings
    has_many :gourmet_toppings, through: :pizza_gourmet_toppings
    belongs_to :pizza_toppings
    has_many :toppings, through: :pizza_toppings
    has_one :cheese 
    has_one :sauce
end
