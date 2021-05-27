class PiecesController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :get_day, only: [:index, :create]
    # before_action :set_piece, only: [:show]

    def index
        @pieces = @day.pieces 
        render json: @pieces
        # , include: [:day]
    end

    def create
        
        # @piece = @day.pieces.build(piece_params)
        piece = Piece.create(piece_params)
        # byebug
        if piece.save
            render json: piece.to_json
            # ( :include => [:days] )
        else
            render json: { 
                status: 500, 
                error: "Cannot create"
            }, status: 500
        end
    end

    def show
        @piece 
        # = Piece.find_by_id(params[:id])
        render json: @piece
        # include: ['piece.day']
    end

    private
    def piece_params
        params.require(:piece).permit(:title, :composer, :voicing, :publisher, :collection, :day_id)
    end

    def get_day
        @day = Day.find(params[:day_id])
    end

    def set_piece
        @piece = @day.pieces.find(params[:id])
    end
end
