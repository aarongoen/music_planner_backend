class CreateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.string :name
      t.string :type
      t.string :lectionary
      t.string :first_reading
      t.string :psalm_or_canticle
      t.string :second_reading
      t.string :gospel
      t.string :date
      t.string :date_pretty
      t.string :year

      t.timestamps
    end
  end
end
