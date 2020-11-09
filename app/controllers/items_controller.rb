class ItemsController < ApplicationController

    def index
        items = Item.all
        render :json => items, each_serializer: ItemSerializer
    end

    def show 
        item = Item.find(params[:id])
        render :json => item, serializer: ItemSerializer
    end

    def create 
        item = Item.find(params[:id])
        render :json => item
    end

    def update
        item = Item.find(params[:id])
        item.update(item_params)
        render :json => item, serializer: ItemSerializer
    end

    def destroy
        item = Item.find(params[:id])
        item.destroy
        render json:{}
    end

    private

    def item_params
        params.require(:item).permit(:farmer_id, :name, :price, :purchase_unit, :stock_amount, :item_pulled)
    end

end
