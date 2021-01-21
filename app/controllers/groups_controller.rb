class GroupsController < ApplicationController

    def index
        groups = Group.all
        render :json => groups, each_serializer: GroupSerializer
    end

    def show
        group = Group.find(params[:id])
        render :json => group, serialzer: GroupSerializer
    end

    def create
        group = Group.create(group_params)
        render :json => group, serialzer: GroupSerializer
    end

    def update
        group = Group.update(group_params)
        group.update(group_params)
        render :json => group, serializer: GroupSerializer
    end

    def destroy
        group = Group.find(params[:id])
        group.destroy()
        render json:{}
    end

    private

    def group_params
        params.require(:group).permit(:id)
    end
end