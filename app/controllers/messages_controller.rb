class MessagesController < ApplicationController
    
    def index
        messages = Message.all
        render :json => messages, each_serializer: MessageSerializer
    end

    def show
        message = Message.find(params[:id])
        render :json => message, serializer: MessageSerializer
    end

    def create
        message = Message.create(message_params)
        render :json => message
    end

    def update 
        message = Message.find(params[:id])
        message.update(message_params)
    end

    def destroy
        message = Message.find(params[:id])
        message json:{}
    end

    private

    def message_params
        params.require(:message).permit(:user_id, :farmer_id, :description, :time, :date)
    end
end
