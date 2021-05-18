class CreateDaysPieces < ActiveRecord::Migration[6.1]
  def change
    create_table :days_pieces do |t|
      t.references :day, foreign_key: true
      t.references :piece, foreign_key: true

      t.timestamps
    end
  end
end
