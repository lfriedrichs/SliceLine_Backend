class CreateSauces < ActiveRecord::Migration[6.0]
  def change
    create_table :sauces do |t|
      t.string :name

      t.timestamps
    end
  end
end
