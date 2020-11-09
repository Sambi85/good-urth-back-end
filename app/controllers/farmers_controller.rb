class FarmersController < ApplicationController
    
    def index
        farmers = Farmer.all
        render :json => farmers, each_serializer: FarmerSerializer
    end
    
    def show 
        farmer = Farmer.find(params[:id])
        render :json => farmer, serialzer: FarmerSerializer
    end

    def create
        farmer = Farmer.find(farmer_params)
        render :json => farmer
    end

    def update
        farmer = Farmer.create(farmer_params)
        farmer.update(farmer_params)
        render :json => farmer
    end

    def destroy
        farmer = Farmer.find(params[:id])
        farmer.destory
        render json:{}
    end

    private

    def farmer_params
        params.require(:farmer).permit(:username, :password_digest, :bio, :address, :email, :phone_number, :open, :close, :days_open, :is_open)
    end
end
