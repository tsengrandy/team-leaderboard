class CreateChallengers < ActiveRecord::Migration[5.2]
  def change
    create_table :challengers do |t|
      t.string :name
      t.integer :points
      t.integer :team_id
      t.boolean :staff

      t.timestamps
    end
  end
end
