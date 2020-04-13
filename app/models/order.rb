class Order < ApplicationRecord
    has_many :pizzas
    belongs_to :user
end
