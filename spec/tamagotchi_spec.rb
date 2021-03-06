require('rspec')
require('tamagotchi')

describe('Tamagotchi') do
  describe('initialize') do
    it('sets the name and life levels of a tamagotchi') do
      my_pet = Tamagotchi.new('lil dragon')
      expect(my_pet.name()).to(eq('lil dragon'))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
    end
  end
  describe("#is_alive") do
    it("is alive if the food level is above 0") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.is_alive()).to(eq(true))
    end
    it("is dead if the food level is 0") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.set_food_level(0) #make a method that will change the food level of your tamagotchi.
      expect(my_pet.is_alive()).to(eq(false))
    end
  describe(:time_passes) do
    it('decreases the amount of food the Tamagotchi has left by 1') do
      my_pet = Tamagotchi.new('lil dragon')
      my_pet.time_passes()
      expect(my_pet.food_level()).to(eq(9))
    end
  end
  # describe(:status) do
  #   it('checks to see if the pet is still alive') do
  #     my_pet = Tamagotchi.new('lil dragon')
  #     expect(my_pet.status()).to(eq("Is alive"))
  #   end
  # end
  describe(:feed_pet) do
    it('feeds the pet by 1 food') do
      my_pet = Tamagotchi.new('lil dragon')
      expect(my_pet.food_level()).to(eq(10))
    end
  end
  describe(:play) do
    it('plays with the pet 1 time') do
      my_pet = Tamagotchi.new('lil dragon')
      expect(my_pet.activity_level()).to(eq(10))
    end
  end
  describe(:sleep_pet) do
    it('plays with the pet 1 time') do
      my_pet = Tamagotchi.new('lil dragon')
      expect(my_pet.activity_level()).to(eq(10))
    end
  end
end
end
