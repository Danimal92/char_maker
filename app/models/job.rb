
class Job < ApplicationRecord
    
    has_many :characters

    @class_file = File.read('/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Classes.json')
    @class_hashes = JSON.parse(@class_file)
    
    def self.make_all_jobs        
        @class_hashes.each{|job|
            name = job["name"]
            saving_throw_profs = []
            job["saving_throws"].each{|s|
                saving_throw_profs << s["name"]

            }
            skill_profs  = []
            job["proficiency_choices"][0]["from"].each{|skill|
                skill_profs << skill["name"]
            }
            proficiencies = []
            job["proficiencies"].each{|prof|
                proficiencies << prof["name"]
            }
            hit_die = job["hit_die"]
            Job.create(name: name, saving_throw_profs: saving_throw_profs.join(','), skill_profs: skill_profs.join(','), proficiencies: proficiencies.join(','), hit_die: hit_die)
        }

    end
   



end


