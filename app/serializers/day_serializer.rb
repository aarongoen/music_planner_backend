class DaySerializer < ActiveModel::Serializer
    attributes :id, :date, :date_pretty, :name, :year, :first_reading, 
    :psalm_or_canticle, 
    :second_reading, 
    :gospel
    
    has_many :pieces

   
  end