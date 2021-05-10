class Day < ApplicationRecord
    has_many :pieces_days
    has_many :pieces, through :pieces_days
end
