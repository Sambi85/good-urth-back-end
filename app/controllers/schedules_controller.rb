class SchedulesController < ApplicationController
    def index
        schedules = Schedule.all
        render :json => schedules, each_serializer: ScheduleSerializer
    end

    def show
        schedule = Schedule.find(params[:id])
        render :json => schedule, serializer: ScheduleSerializer
    end

    def create
        schedule = Schedule.create(schedule_params)
        render :json => schedule, serializer: ScheduleSerializer
    end

    def update
        schedule = Schedule.find(params[:id])
        schedule.update(schedule_params)
        render :json => schedule, serializer: ScheduleSerializer
    end

    def destroy
        review = Schedule.find(params[:id])
        review.destroy
        redner json:{}
    end

    private

    def schedule_params
        params.require(:schedule).permit(:market_id, :farmer_id, :days_of_the_week)
    end
end
