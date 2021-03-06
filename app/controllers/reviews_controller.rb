class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render :json => reviews, each_serializer: ReviewSerializer
    end

    def show
        review = Review.find(params[:id])
        render :json => review, serializer: ReviewSerializer
    end

    def create
        review = Review.create(review_params)
        render :json => review, serializer: ReviewSerializer
    end

    def update
        review = Review.find(params[:id])
        review.update(review_params)
        render :json => review, serializer: ReviewSerializer
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
        redner json:{}
    end

    private

    def review_params
        params.require(:review).permit(:user_id, :farmer_id, :star_rating, :description, :time, :date)
    end

end

