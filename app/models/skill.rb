class Skill < ApplicationRecord
    has_many :characters_skills
    has_many :characters, through: :characters_skills

    @skill_file = File.read('/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Skills.json')
    @skill_hashes = JSON.parse(@skill_file)
    
    def self.make_all_skills
        @skill_hashes.each{|skill|
            name = skill["name"]
            ability_score = skill["ability_score"]["name"]
            desc = skill["desc"]

            Skill.create(name: name, ability_score: ability_score, desc: desc)
        
        
        
        
        
        
        }

    end

end
