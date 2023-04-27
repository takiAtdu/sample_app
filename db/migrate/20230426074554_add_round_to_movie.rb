class AddRoundToMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :round, :string
  end
end
