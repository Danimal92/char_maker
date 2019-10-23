class CreateJoinTableCharacterSpells < ActiveRecord::Migration[6.0]
  def change
    create_join_table :spells, :characters do |t|
      # t.index [:spell_id, :character_id]
      # t.index [:character_id, :spell_id]
    end
  end
end
