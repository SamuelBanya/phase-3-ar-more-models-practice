class Watering < ActiveRecord::Base
   # Previous code before revision to include alias:
   # belongs_to :person
   belongs_to :waterer, :class_name => "Person", :foreign_key => "person_id"
   # Previous code before revision to include alias:
   belongs_to :wateree, :class_name => "Plant", :foreign_key => "plant_id"
   # belongs_to :plant
   # def plant_parents
   #     # before ActiveRecord
   #     PlantParent.all.select{|plant_parent| plant_parent == self.plant_parents}
   #     # AR:
   #     id_num = self.plant_parent_id
   #     PlantParent.find(id_num)
   # end
end