class CreateBackgrounds < ActiveRecord::Migration[6.0]
  def change
    create_table :backgrounds do |t|
      t.string :features
      t.string :equipment
      t.string :personality
      t.string :ideals
      t.string :bonds
      t.string :flaws
      

      t.timestamps
    end
  end
end
