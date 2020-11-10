class OrdersController < ApplicationController

    def index
        orders = Order.all
        render :json => orders, each_serializer: OrderSerializer
    end

    def show
        order = Order.find(params[:id])
        render :json => order, serializer: OrderSerializer
    end

    def create
        order = Order.create(order_params)
        render :json => order, serializer: OrderSerializer
    end

    def update
        order = Order.find(params[:id])
        order.update(order_params)
        render :json => order, serializer: OrderSerializer
    end

    def destroy
        order = Order.find(params[:id])
        order.destroy
        render json:{}
    end

    private

    def order_params
        params.require(:order).permit(:user_id, :subtotal, :tax, :total, :pick_up)
    end
end

