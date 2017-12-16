class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  # create a class variable that will keep track of all of the brands
  # each new shoe that gets created MUST have a brand
  # NOTE: unique brands should be added to the class variable of brands
  # how will Shoe.brands be able to retrieve all of those brands?
  # REMEMBER: class methods start with self
 @@brands = [] #array for shoe brands
 
 def initialize(brand) #every time a new Shoe is introduced 
   @brand = brand #record the brand name 
   @@brands << brand #put the brand name of each shoe into the @@brands array
   @@brands = @@brands.uniq #the array will have/record unique shoe brands thanks to this array method .uniq 
 end
 def self.brands #this is a class method
   @@brands
 end
end