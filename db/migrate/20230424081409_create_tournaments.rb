class CreateTournaments < ActiveRecord::Migration[7.0]
  def change
    create_table :tournaments do |t|
      t.integer :year
      t.string :tournament

      t.timestamps
    end
  end
end
