class Day < ApplicationRecord
    has_many :days_pieces
    has_many :pieces, through: :days_pieces, dependent: :destroy

end
