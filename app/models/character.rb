class Character < ApplicationRecord
    belongs_to :user
    belongs_to :race
    belongs_to :background
    belongs_to :class
    has_many :character_spells
    has_many :spells, through: :character_spells
    has_many :character_skills
    has_many :skills, through: :character_skills
end
