class Api::V1::OrdersController < ApplicationController

    def index
        # orders = Order.where(:user => user_params)
        orders = Order.all
        render json: orders
    end

    # def show
    #     order = Order.find(params[:id])
    #     render json: order
    # end

    def create
        order = Order.create(user_id: params['order']['user_id'])
        order.makePizza(params['order']['pizzas'])
        if order.valid?
            render json: order
        else 
            render json: {message: order.errors.full_messages}
        end
    end

    def update
        order = Order.find(params[:id])
        if order.valid?
            order.makePizza(params[:pizzas])
            render json: order
        else
            render json: {message: order.errors.full_messages}
        end
    end

    def destroy
        order = Order.find(params[:id])
        order.destroy
        render json: {message: "order successfully deleted"}
    end

end