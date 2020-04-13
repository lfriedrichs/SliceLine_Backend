class UserSerializer < ActiveModel::Serializer
  attributes :name, :id, :orders

  def orders 
    self.object.orders.map do |order|
      {order_id: order.id}
    end
  end
end
