class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user, :pizzas

  def pizzas
    self.object.pizzas.map do |pizza|
      {pizza_id: pizza.id,
      sizes: pizza.size.name,
      sauces: pizza.sauce.name,
      cheeses: pizza.cheese.name,
      toppings: pizza.toppings.map {|topping| topping.name},
      gourmet_toppings: pizza.gourmet_toppings.map {|gourmet_topping| gourmet_topping.name}}
    end
  end

  def user
    {user_id: self.object.user.id, 
     user_name: self.object.user.name}
  end

end