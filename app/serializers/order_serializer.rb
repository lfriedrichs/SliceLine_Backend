class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user, :pizzas

  def pizzas
    self.object.pizzas.map do |pizza|
      {pizza_id: pizza.id,
      size: pizza.size.name,
      sauce: pizza.sauce.name,
      cheese: pizza.cheese.name,
      toppings: pizza.toppings.map {|topping| topping.name},
      gourmet_toppings: pizza.gourmet_toppings.map {|gourmet_topping| gourmet_topping.name}}
    end
  end

  def user
    {user_id: self.object.user.id, 
     user_name: self.object.user.name}
  end

end