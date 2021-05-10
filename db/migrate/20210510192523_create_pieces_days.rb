class CreatePiecesDays < ActiveRecord::Migration[6.1]
  def change
    create_table :pieces_days do |t|
      t.integer :piece_id
      t.integer :day_id

      t.timestamps
    end
  end
end
