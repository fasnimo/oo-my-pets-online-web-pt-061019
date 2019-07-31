class Owner
  attr_accessor :cats, :dogs
  attr_reader :name, :species
  @@all = []

  def initialize(name)
    #can not change owners name
     @name = name
     @species = "human"
     @cats = []
     @dogs = []
     @@all << self
  end

  def say_species
    #can say it's  species
    "I am a #{self.species}."
  end

  def self.all
    # .all returns all instances of Owner that have been created (FAILED - 6)
    # .count returns the number of owners that have been created (FAILED - 7)
    # .reset_all can reset the owners that have been created (FAILED - 8)
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@all.length
  end

  def cats
     Cat.all.select {|cat| cat.owner == self }
  end

  def dogs
     Dog.all.select {|dog| dog.owner == self }
  end

  def buy_cat(name)
   Cat.new(name, self)
  end

  def buy_dog(name)
   Dog.new(name, self)
  end

  def walk_dogs
    @dog.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    @cat.each {|cat| cat.mood = "happy"}
  end
    self.cats.each {|kitty| kitty.mood = "nervous"}
    self.dogs.each {|dog| dog.mood = "nervous"}
    self.cats.each {|kitty| kitty.owner = nil}
    self.dogs.each {|dog| dog.owner = nil}

  end
 #  def sell_pets
 #    pets = @dogs+@cats
 #   pets.each do |pet|
 #     pet.mood = "nervous"
 #     pet.owner = nil
 #   end
 #   @dogs = []
 #   @cats = []
 # end

 def list_pets
   "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
 end
end
