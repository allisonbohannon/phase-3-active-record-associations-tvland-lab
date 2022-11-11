class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        arr = []
        self.characters.each do |char|
            item = "#{char.name} - #{char.show.name}"
            arr << item
        end
        arr
    end

  
end