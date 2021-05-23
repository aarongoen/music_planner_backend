class PieceSerializer < ActiveModel::Serializer
    attributes :id, :title, :composer, :voicing, :collection, :day
    belongs_to :day

    def day
        {day_id: self.object.day.id,
        name: self.object.day.name }
    end
   
end