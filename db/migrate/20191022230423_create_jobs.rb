class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :saving_throw_profs
      t.string :skill_profs_options
      t.string :features
      t.string :equipment
      t.string :hp
      t.string :hit_die

      t.timestamps
    end
  end
end
