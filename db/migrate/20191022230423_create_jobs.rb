class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :saving_throw_profs
      t.string :skill_profs
      t.string :hit_die
      t.integer :proficiencies
      t.timestamps
    end
  end
end
