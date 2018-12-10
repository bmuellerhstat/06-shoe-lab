class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  # create a class variable that will keep track of all of the brands
  @@brands = [ ]
  
  # each new shoe that gets created MUST have a brand
  # NOTE: unique brands should be added to the class variable of brands
  def initialize(brand)
    @brand = brand 
  end 
  
  def self.brand
    @@brands
  end 
  
  def brand=(brand)
    @brand = brand
    @@brands << brand
  end 

  # how will Shoe.brands be able to retrieve all of those brands?
  # REMEMBER: class methods start with self
  
  
end