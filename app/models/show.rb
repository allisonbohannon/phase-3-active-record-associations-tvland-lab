class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network

    def actors_list
        arr = []
        self.characters.each do |char|
            arr << char.actor.full_name
        end
        arr
    end
end