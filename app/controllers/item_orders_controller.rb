class ItemOrdersController < ApplicationController

    def index
        item_orders = ItemOrder.all
        render :json => item_orders, each_serializer: ItemOrderSerializer
    end

    def show
        item_order = ItemOrder.find(params[:id])
        render :json => item_order, serialzer: ItemOrderSerializer
    end

    def create
        item_order = ItemOrder.create(item_order_params)
        render :json => item_order, serialzer: ItemOrderSerializer
    end

    def update
        item_order = ItemOrder.find(params[:id])
        item_order.update(item_order_params)
        render :json => item_order, serializer: ItemOrderSerializer
    end

    def destroy
        item_order = ItemOrder.find(params[:id])
        item_order.destroy()
        render json:{}
    end

    private

    def item_order_params
        params.require(:item_order).permit(:item_id, :order_id, :quantity, :created_at, :updated_at, :group_id)
    end
end
