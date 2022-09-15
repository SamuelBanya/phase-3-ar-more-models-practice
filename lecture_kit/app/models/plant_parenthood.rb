class PlantParenthood < ActiveRecord::Base
    before_save :cap_affection

    belongs_to :person
    belongs_to :plant
    # PlantParenthood#cap_affection: 
    # introduces a cap on the affection value at 11_000
    def cap_affection()
        # Check if affection is higher than 11,000
        # If it is, change it 
        binding.pry()
        self.affection = 11000 if self.affection > 11000
    end
end