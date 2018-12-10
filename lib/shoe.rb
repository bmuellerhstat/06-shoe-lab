class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  @@brands = []#array to keep all brands
  # create a class variable that will keep track of all of the brands
  def initialize(brand)
    @brand=brand
    if @@brands.include?(brand)#if brand already exist delete the one already there, if not add it
      @@brands.delete(brand)
    else
      @@brands << brand
    end
  
  def self.brands
    @@brands
  end
  
  # each new shoe that gets created MUST have a brand
  # NOTE: unique brands should be added to the class variable of brands
  # how will Shoe.brands be able to retrieve all of those brands?
  # REMEMBER: class methods start with self
  
end
end