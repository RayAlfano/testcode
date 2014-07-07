class Animal

  #Class to abstract the functions of an animal
  #Test code for testcode and polymorphism
  #Copyright Ray Alfano, 2014

  def ConsumeFood
    return "No food available"
  end

  def Rest
    print self.class.name + " is resting.\n"
  end

  def MakeSound
    return ""
  end

  #Define a "Dog" that inherits from the Animal superclass
  class Dog < Animal
    def ConsumeFood
      print self.class.name + " ate some dog food.\n"
    end

    def MakeSound
      return "Arf!"
    end
  end

  #Define a "Bird" that inherits from the Animal superclass
  class Bird < Animal
    def ConsumeFood
      print self.class.name + " ate some bird seed.\n"
    end

    def Rest
      print self.class.name + " took a nap.\n"
    end

    def MakeSound
      return "Chirp!"
    end
  end

  #Define a "Cat" that inherits from the Animal superclass
  class Cat < Animal
    def MakeSound
      return "Meow!"
    end

    def Rest
      print self.class.name + " took a cat nap.\n"
    end
  end

manyAnimals = [Cat.new, Dog.new, Bird.new]
manyAnimals.each {|singleAnimal|
  singleAnimal.Rest
  singleAnimal.ConsumeFood
  print singleAnimal.MakeSound + "\n"
}
end