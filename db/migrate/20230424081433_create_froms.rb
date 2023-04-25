class CreateFroms < ActiveRecord::Migration[7.0]
  def change
    create_table :froms do |t|
      t.integer :player_id
      t.string :from

      t.timestamps
    end
  end
end
