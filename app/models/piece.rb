class Piece < ApplicationRecord
    has_many :days_pieces
    has_many :days, through: :days_pieces, dependent: :destroy
end
