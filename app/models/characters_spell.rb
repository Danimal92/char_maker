class CharactersSpell < ApplicationRecord
    belongs_to :character
    belongs_to :spell
end