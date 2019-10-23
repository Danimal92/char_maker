class CreateJoinTableCharacterSkills < ActiveRecord::Migration[6.0]
  def change
    create_join_table :skills, :characters do |t|
      # t.index [:skill_id, :character_id]
      # t.index [:character_id, :skill_id]
    end
  end
end
