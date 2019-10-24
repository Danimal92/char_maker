class Race < ApplicationRecord
    has_many :characters

    @race_file = File.read('/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Races.json')
    @race_hashes = JSON.parse(@race_file)
    

    
    

    def self.make_all_races
        @race_hashes.each{|race|
    

        name = race["name"]
        speed = race["speed"]
        languages = []
        race["languages"].each{|language|
            languages << language["name"]}
        age = race["age"]
        size = race["size"]
        asi_mod = []
        race["ability_bonuses"].each{|bonus|
            asi_mod << bonus["name"]}
        



        Race.create(name: name, speed: speed, languages: languages.join(','), age: age, size: size, asi_mod: asi_mod.join(','))
    }
    end

end
