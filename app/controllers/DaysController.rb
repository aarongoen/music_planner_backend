class DaysController < ApplicationController
    def index
        # byebug
        days = Day.all
        render json: days, include: ['days.pieces']
    end

    def show
        day = Day.find_by_id(params[:id])
        render json: day, include: ['day.pieces']
    end
end
