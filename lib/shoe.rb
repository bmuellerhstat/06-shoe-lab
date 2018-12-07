class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  @@brands = []
  def initialize(brand) 
       @brand = brand
       @@brands << brand
       @@brands = @@brands.uniq
  end
  def self.brands
     @@brands
  end
end
