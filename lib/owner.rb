require 'pry'
class Owner
  # code goes here
 attr_reader :type, :species
 attr_accessor :name, :pets

  def initialize(type)
  	@type = type
  	@species = "human"	
    @pets = { :cats => [],
              :dogs => [],
              :fishes => []
            }
  end

  def say_species
  	"I am a #{@species}."
  end

  def name=(name)
  	@name = name
  end

  def pets 
    @pets 
  end

  def buy_fish(fish_name)
    self.pets[:fishes] << fish_name
  end

  def buy_cat(cat_name)
    self.pets[:cats] << cat_name
  end

  def buy_dog(dog_name)
    self.pets[:dogs] << dog_name
  end

end