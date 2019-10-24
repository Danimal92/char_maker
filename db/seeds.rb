# require 'pry'
require 'json'
# require_relative '/lib/5e-database/5e-SRD-Classes.json'
# require_relative '/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Races.json'
# require_relative '/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Skills.json'
# require_relative '/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Spells.json'


class_file = File.read('/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Classes.json')
race_file = File.read('/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Races.json')
skill_file = File.read('/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Skills.json')
spell_file = File.read('/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Spells.json')
feature_file = File.read('/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Features.json')

class_hashes = JSON.parse(class_file)
race_hashes = JSON.parse(race_file)
skill_hashes = JSON.parse(skill_file)
spell_hashes = JSON.parse(spell_file)
feature_hashes = JSON.parse(feature_file)

Job.make_all_jobs
Race.make_all_races
Skill.make_all_skills
Spell.make_all_spells












