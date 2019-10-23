class CharactersSkill < ApplicationRecord
    belongs_to :character
    belongs_to :spell
end