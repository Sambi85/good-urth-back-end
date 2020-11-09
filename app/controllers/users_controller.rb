class UsersController < ApplicationController

    def index
        users = User.all
        render :json => users, each_serializer: UserSerializer
    end

    def show 
        user = User.find([params[:id]])
        render :json => user, serialzer: UserSerializer
    end

    def create 
        user = User.create(user_name)
        render :json => user
    end
    

    # def profile
    #     render json: { user: UserSerializer.new(current_user) }, status: accepted
    # end 

    # def create
    #     @user = User.create(user_params)
    #     if @user.valid?
    #         @token = encode_token({user_id: @user.id})
    #         render json: { user: UserSerializer.new(@user), jwt: @token}, status :created
    #     else
    #         render json: { error: 'failed to create user'}, status: :not_acceptable
    #     end
    # end

    def update 
        user = User.find(params[:id])
        user.update(user_params)
        render :json => user, serialzer: UserSerialzer
    end

    def destroy 
        user = User.find(params[:id])
        user.destroy
        render json:{}
    end

    private

    def user_params
        params.require(:user).permit(:username, :password_digest, :bio, :email, :phone_number, :avatar)
    end
    
end
