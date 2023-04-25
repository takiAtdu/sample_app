class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.integer :tournament_id
      t.string :movie
      t.integer :player_a_id
      t.integer :player_b_id
      t.integer :player_c_id
      t.integer :player_d_id

      t.timestamps
    end
  end
end
