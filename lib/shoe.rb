class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  # create a class variable that will keep track of all of the brands
  
  @@brands = [] #holds different instances of brands the user types
  # how will Shoe.brands be able to retrieve all of those brands?
  # REMEMBER: class methods start with self
  
  def initialize(brand) #uses global variables to hold all brands and all unique brands 
    @brand = brand
    @@brands << brand
    @@brands = @@brands.uniq #makes each new shoe brand different
  end
  
  def self.brands #defines a method for each brand of shoe
    @@brands #global variable for brands
  end

  # each new shoe that gets created MUST have a brand
  # NOTE: unique brands should be added to the class variable of brands
  
end

#Jordan = Shoe.new