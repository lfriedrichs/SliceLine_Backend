class UserSerializer < ActiveModel::Serializer
  attributes :name, :id, :orders

  def orders 
    # self.object.orders.map do |order|
    #   {order_id: order.id}
    #   {pizzas: }
    # end

    ActiveModel::SerializableResource.new(self.object.orders,  each_serializer: OrderSerializer)
  end
end
