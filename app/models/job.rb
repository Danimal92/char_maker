
class Job < ApplicationRecord
    
    has_many :characters

    @class_file = File.read('/Users/flatironschool/Desktop/My_Code/char_maker/lib/5e-database/5e-SRD-Classes.json')
    @class_hashes = JSON.parse(@class_file)


   

end
