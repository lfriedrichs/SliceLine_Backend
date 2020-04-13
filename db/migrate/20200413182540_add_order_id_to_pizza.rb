class AddOrderIdToPizza < ActiveRecord::Migration[6.0]
  def change
    add_column :pizzas, :order_id, :integer
  end
end
