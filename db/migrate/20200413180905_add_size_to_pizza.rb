class AddSizeToPizza < ActiveRecord::Migration[6.0]
  def change
    add_column :pizzas, :size, :string
  end
end
