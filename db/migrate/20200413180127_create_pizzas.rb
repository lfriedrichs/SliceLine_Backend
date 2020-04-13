class CreatePizzas < ActiveRecord::Migration[6.0]
  def change
    create_table :pizzas do |t|
      t.integer :sauce_id
      t.integer :cheese_id
      t.integer :order_id
      t.string :size

      t.timestamps
    end
  end
end
