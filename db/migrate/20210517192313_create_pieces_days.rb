class CreatePiecesDays < ActiveRecord::Migration[6.1]
  def change
    create_table :pieces_days do |t|
      t.belongs_to :day, null: false, foreign_key: true
      t.belongs_to :piece, null: false, foreign_key: true

      t.timestamps
    end
  end
end
