class Tamagotchi

  @@pets = []

  define_method(:initialize) do |name|
    @pet_name = name
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
    @is_dead = false
    @@pets.push(self)
  end

  define_method(:name) do
    @pet_name
  end
  define_method(:food_level) do
    @food_level
  end
  define_method(:sleep_level) do
    @sleep_level
  end
  define_method(:activity_level) do
    @activity_level
  end
  define_method(:is_alive) do
    if @food_level > 0 && @is_dead == false
      true
    else
      false
    end
  end

  define_method(:set_food_level) do |level|
    @food_level = level
  end
  define_method(:time_passes) do
    @food_level -= 1
    @sleep_level -= 1
    @activity_level -= 1
  end
  define_method(:feed_pet) do
    @food_level += 1
  end
  define_method(:play) do
    @activity_level += 1
  end
  define_method(:sleep_pet) do
    @sleep_level += 1
  end
  # define_method(:status) do
  #   if @food_level > 0
  #
  # end
  define_singleton_method(:all_pets) do
    @@pets
  end

end
