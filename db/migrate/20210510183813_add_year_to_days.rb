class AddYearToDays < ActiveRecord::Migration[6.1]
  def change
    add_column :days, :year, :string
  end
end
