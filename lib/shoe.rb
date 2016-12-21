class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  # create a class variable that will keep track of all of the brands
  @@brands = []
  @@unique = []
  
  # each new shoe that gets created MUST have a brand
  # NOTE: unique brands should be added to the class variable of brands
  def initialize(brand)
  @brand = brand  
  @@brands << brand 
  @@unique << brand
  @@unique = @@unique.uniq
  end
  
  # how will Shoe.brands be able to retrieve all of those brands?
  # REMEMBER: class methods start with self
  def self.brands
    @@brands
  end
  
  def self.unique
    @@unique
  end
  
  # def unique(brand)
  #   @brand = brand
  #   @@brands << brand if @@brands.include?(brand) == false
  # end
  
end

brand1 = Shoe.new("Jordan")
brand2 = Shoe.new("Nike")
brand3 = Shoe.new("Nike")