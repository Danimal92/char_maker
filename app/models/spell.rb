class Spell < 
    has_many :characters_spells
    has_many :characters, through: :characters_spells
end
