class Pizza < ApplicationRecord
    belongs_to :order
    has_many :pizza_gourmet_toppings
    has_many :gourmet_toppings, through: :pizza_gourmet_toppings
    has_many :pizza_toppings
    has_many :toppings, through: :pizza_toppings
    belongs_to :cheese 
    belongs_to :sauce
    belongs_to :size
end
