class Piece < ApplicationRecord
    has_many :pieces_days
    has_many :days, through: :pieces_days
end
