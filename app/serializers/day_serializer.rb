class DaySerializer < ActiveModel::Serializer
    attributes :id, :date, :date_pretty, :name, :year, :first_reading, 
    :psalm_or_canticle, 
    :second_reading, 
    :gospel, :pieces

    def pieces 
      self.object.pieces.map do |piece|
        {piece_id: piece.id,
         title: piece.title, 
         composer: piece.composer,
         voicing: piece.voicing,
        collection: piece.collection}
      end 
    end 
  end