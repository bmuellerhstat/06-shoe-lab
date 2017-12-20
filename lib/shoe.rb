class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  # create a class variable that will keep track of all of the brands
  @@brands = []
  
  def initialize(brand)
    @brands = brand
    if @@brands.include?(brand) == false
      @@brands << brand
    end
  end
=begin  
  def 
    @@brands.map do |brands|
      if @brand != brands
        @@brands << @brand
      end
    end
  end
=end

  def self.brands
    @@brands
  end
  
  # each new shoe that gets created MUST have a brand
  # NOTE: unique brands should be added to the class variable of brands
  
  
  # how will Shoe.brands be able to retrieve all of those brands?
  # REMEMBER: class methods start with self
  
  
end