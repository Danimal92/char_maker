class Character < ApplicationRecord
    #validates :name,:equipment,:int,:str,:dex,:wis,:cha,:con,:hp,:ac,:alignment,:size,:languages,:saving_throws,:initiative,:job_id, :race_id, :skills_id, :spells_id, :skills_id, presence: true
    validates :int, :str, :dex, :cha, :wis, :con, numericality:{less_than_or_equal_to: 8}
    belongs_to :user
    belongs_to :race
    belongs_to :job
    has_many :characters_spells
    has_many :spells, through: :characters_spells
    has_many :characters_skills
    has_many :skills, through: :characters_skills

    
end
