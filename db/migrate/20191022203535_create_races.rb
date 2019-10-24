class CreateRaces < ActiveRecord::Migration[6.0]
  def change
    create_table :races do |t|
      t.string :name
      t.integer :speed
      t.text :languages 
      t.string :age
      t.string :size
      t.string :asi_mod
      
      t.timestamps
    end
  end
end
