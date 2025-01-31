class Plant < ActiveRecord::Base
    has_many :plant_parenthoods
    has_many :people, through: :plant_parenthoods
    has_many :plant_categories
    has_many :categories, through: :plant_categories
    has_many :waterings
    has_many :waterers, through: :waterings

    # Plant#number_of_days_since_the_last_watering: 
    # puts "I was watered NUMBER days ago"
    def number_of_days_since_the_last_watering()
        # binding.pry()
        today = DateTime.now()
        last_watering = self.waterings.last.created_at.to_datetime()
        number = (today - last_watering).to_i
        # My version:
        # if number > 0
            # return puts "I was watered #{number} days ago"
        # end
        # Instructor's crazy if statement logic workflow
        # just so she can have a one liner that doesn't
        # read that great:
        return puts "I was watered #{number} days ago" if number > 0
        puts "I was watered today"
    end
end
