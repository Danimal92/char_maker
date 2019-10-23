class CreateRaces < ActiveRecord::Migration[6.0]
  def change
    create_table :races do |t|
      t.string :name
      t.integer :con_mod
      t.integer :int_mod
      t.integer :wis_mod
      t.integer :str_mod
      t.integer :dex_mod
      t.integer :cha_mod
      t.text :features
      t.integer :speed
      t.text :languages 
      t.integer :age
      t.string :size
      
      t.timestamps
    end
  end
end
