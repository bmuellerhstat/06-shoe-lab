class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  # create a class variable that will keep track of all of the brands
  @@brands = []
  
  # each new shoe that gets created MUST have a brand
  # NOTE: unique brands should be added to the class variable of brands
def initialize(brands)
  @@brands << brands
      @@brands = @@brands.uniq #uniq class variable
end
  
  # how will Shoe.brands be able to retrieve all of those brands?
  # REMEMBER: class methods start with self
  
  def self.brands  #class method bc it starts with self
          @@brands #class variable
  end
end
