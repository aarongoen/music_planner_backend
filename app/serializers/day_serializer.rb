class DaySerializer < ActiveModel::DaySerializer
    attributes :id, :name 
    # :type, :lectionary, :first_reading, :psalm_or_canticle, :second_reading, :gospel, :date, :date_pretty, :year 
    has_many :pieces

end