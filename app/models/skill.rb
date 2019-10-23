class Skill < ApplicationRecord
    has_many :characters_skills
    has_many :characters, through: :characters_skills
end
