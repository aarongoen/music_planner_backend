class DaysController < ApplicationController
    def index
        # byebug
        days = Day.all
        render json: days
    end

    def show
        # byebug
        day = Day.find_by_id(params[:id])
        render json: day
    end
end
