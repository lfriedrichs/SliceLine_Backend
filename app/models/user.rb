class User < ApplicationRecord
    has_many :orders
    accepts_nested_attributes_for :orders

    validates :name, uniqueness: true
end
