class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  # create a class variable that will keep track of all of the brands
  @@brands = [] 
  
  def initialize(brand)
    @brand = brand
  end
  
  # each new shoe that gets created MUST have a brand
  # NOTE: unique brands should be added to the class variable of brands
  def brand= (brand)
    @brand = brand  
    #Condition below: Checks if the brand is unique. If so, add it into the class variable.  
    if @@brand.include?(brand) == false
      @@brands << brand 
    end
  end
  
  # how will Shoe.brands be able to retrieve all of those brands?
  # REMEMBER: class methods start with self
  def self.brands
    @@brands
  end
end 

