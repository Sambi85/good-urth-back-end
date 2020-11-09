class MarketsController < ApplicationController
    def index
        markets = Market.all
        render :json => markets, each_serializer: MarketSerializer
    end

    def show
        market = Market.find(params[:id])
        render :json => market, serializer: MarketSerializer
    end

    def create
        market = Market.create(market_params)
        render => :json => market
    end

    def update
        market = Market.find(params[:id])
        market.update(market_params)
        render :json => market, serializer: MarketSerializer
    end

    def destroy
        market = Market.find(params[:id])
        market.destroy
        render json:{}
    end

    private

    def market_params
        params.require(:market).permit(:name, :address, :borough, :latitude, :longitude, :hours_of_operation, :season_dates, :location, :contact, :url, :fmnp, :snap_status, :zip, :operation_months_code, :phone)
    end
end
