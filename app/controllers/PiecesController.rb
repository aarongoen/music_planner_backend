class PiecesController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        pieces = Piece.all
        render json: pieces, include: [:day]
    end

    def create
        # byebug
        piece = Piece.create(piece_params)
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

    private
    def piece_params
        params.require(:piece).permit(:title, :composer, :voicing, :publisher, :collection)
    end
end
