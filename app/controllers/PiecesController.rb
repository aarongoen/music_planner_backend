class PiecesController < ApplicationController
    def index
        Pieces = Piece.all
        render json: Pieces
    end
end
