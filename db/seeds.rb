# require 'pry'
require 'json'
require 'faker'
# require_relative '/lib/5e-database/5e-SRD-Classes.json'
# require_relative '/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Races.json'
# require_relative '/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Skills.json'
# require_relative '/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Spells.json'


class_file = File.read('/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Classes.json')
race_file = File.read('/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Races.json')
skill_file = File.read('/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Skills.json')
spell_file = File.read('/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Spells.json')
equipment_file = File.read('/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Equipment.json')

class_hashes = JSON.parse(class_file)
race_hashes = JSON.parse(race_file)
skill_hashes = JSON.parse(skill_file)
spell_hashes = JSON.parse(spell_file)
equipment_hashes = JSON.parse(equipment_file)

Job.make_all_jobs
Race.make_all_races
Skill.make_all_skills
Spell.make_all_spells

User.create(name: "Dan")



10.times do

    Character.create(name: Faker::Movies::LordOfTheRings.character, gender: 'male', int: rand(9...30),str: rand(9...30),dex: rand(9...30),wis: rand(9...30),cha: rand(9...30),con: rand(9...30), hp: rand(1...20), equipment: Faker::Appliance.equipment, ac: rand(4...20), alignment: "Neutral Good", size: Faker::Measurement.height, languages: Faker::ProgrammingLanguage.name, saving_throws: Faker::Lorem.word, initiative: rand(1...4), user_id: 1, race_id: rand(1...6),job_id: rand(1...9), spell_ids: rand(1...100), skill_ids: rand(1...7))
    
    end
    
    











