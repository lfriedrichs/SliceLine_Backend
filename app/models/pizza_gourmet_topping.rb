class PizzaGourmetTopping < ApplicationRecord
    belongs_to :pizza 
    belongs_to :gourmet_topping
end
