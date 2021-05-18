class DaysController < ApplicationController
    def index
        days = Day.all
        render json: days, include: ['days.pieces']
    end

    def show
        day = Day.find_by_id(params[:id])
        render json: day.to_json
        # ( :include => [:pieces])
    end
end
