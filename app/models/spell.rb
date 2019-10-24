class Spell <  ApplicationRecord
    has_many :characters_spells
    has_many :characters, through: :characters_spells

    @spell_file = File.read('/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Spells.json')
    @spell_hashes = JSON.parse(@spell_file)

    def self.make_all_spells
        @spell_hashes.each{|spell|
        
        name = spell["name"]
        desc = spell["desc"]
        range = spell["range"]
        duration = spell["duration"]
        level = spell["level"]
        classes = []
        spell["classes"].each{|classs|
            classes << classs["name"]
        }
        
        
        Spell.create(name: name, desc: desc, range: range, duration: duration, level: level, classes: classes.join(','))
        }


    end
end
