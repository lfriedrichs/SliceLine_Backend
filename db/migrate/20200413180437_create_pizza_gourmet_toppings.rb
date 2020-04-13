class CreatePizzaGourmetToppings < ActiveRecord::Migration[6.0]
  def change
    create_table :pizza_gourmet_toppings do |t|
      t.integer :pizza_id
      t.integer :gourmet_topping_id

      t.timestamps
    end
  end
end
