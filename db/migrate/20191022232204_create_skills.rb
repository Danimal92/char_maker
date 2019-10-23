class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :ability_score
      t.string :desc

      t.timestamps
    end
  end
end
