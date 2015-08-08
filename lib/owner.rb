class Owner
  # code goes here
 attr_reader :type, :species
 attr_accessor :name
  def initialize(type)
  	@type = type
  	@species = "human"	
    @pets = {}
  end

  def say_species
  	"I am a #{@species}."
  end

  def name=(name)
  	@name = name
  end
end