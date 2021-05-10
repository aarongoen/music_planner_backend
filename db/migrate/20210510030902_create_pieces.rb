class CreatePieces < ActiveRecord::Migration[6.1]
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :composer
      t.string :voicing
      t.string :publisher
      t.string :collection
      t.integer :day_id
      t.timestamps
    end
  end
end
