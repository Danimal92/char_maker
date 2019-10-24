class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :gender 
      t.integer :int
      t.integer :str
      t.integer :dex
      t.integer :wis
      t.integer :cha
      t.integer :con
      t.integer :hp
      t.text :equipment
      t.integer :ac
      t.string :alignment
      t.string :size
      t.string :languages
      t.text :saving_throws
      t.string :name
      t.integer :initiative
      t.integer :user_id
      t.integer :race_id
      t.integer :job_id


      t.timestamps
    end
  end
end
