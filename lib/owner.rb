require 'pry'
class Owner
  # code goes here
 attr_reader :type, :species
 attr_accessor :name, :pets, :mood, :all, :reset_all

  @@all = [] 

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end
  def initialize(type)
  	@type = type
  	@species = "human"	
    @pets = { :cats => [],
              :dogs => [],
              :fishes => []
            }
    @@all << self
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

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
   pets[:dogs].each { |d| d.mood = "happy" }
  end

  def play_with_cats
    pets[:cats].each { |c| c.mood = "happy" }
  end

  def feed_fish
    pets[:fishes].each { |f| f.mood = "happy" }
  end

  def sell_pets    
    @pets.each do |pet_type_key, pet_array|
      pet_array.each do |individual_pet|
        individual_pet.mood = "nervous"
        pets.delete(pet_type_key)
      end
    end
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end
end