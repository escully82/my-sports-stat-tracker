class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.integer :pass
      t.integer :rush
      t.integer :rec
      t.integer :off_yards
      t.integer :off_td
      t.integer :xp_1
      t.integer :xp_2
      t.integer :off_int
      t.integer :off_fum
      t.integer :tkl
      t.integer :sack
      t.integer :def_int
      t.integer :ffum
      t.integer :fmrc
      t.integer :pbu
      t.integer :def_td
      t.integer :def_xp
      t.integer :player_id

      t.timestamps null: false
    end
  end
end
