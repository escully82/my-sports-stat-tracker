class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :game_time
      t.string :game_location
      t.string :home_team
      t.string :away_team

      t.timestamps null: false
    end
  end
end
