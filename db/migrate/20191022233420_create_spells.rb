class CreateSpells < ActiveRecord::Migration[6.0]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :desc
      t.string :range
      t.string :duration
      t.integer :level
      t.string :classes

      t.timestamps
    end
  end
end
