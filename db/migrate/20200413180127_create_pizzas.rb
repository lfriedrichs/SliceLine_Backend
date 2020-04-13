class CreatePizzas < ActiveRecord::Migration[6.0]
  def change
    create_table :pizzas do |t|
      t.integer :sauce_id
      t.integer :cheese_id

      t.timestamps
    end
  end
end
