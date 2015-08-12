require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**.*rb')
require('./lib/tamagotchi')

get('/') do
  erb(:index)
end

post('/new_pet') do
  @pet_name = params.fetch('pet_name')
  @pet = Tamagotchi.new(@pet_name)
  @food_level = @pet.food_level()
  @activity_level = @pet.activity_level()
  @sleep_level = @pet.sleep_level()
  erb(:tamagotchi)
end

post('/action') do
  if params.has_key?('inlineCheckbox1')
    @food_level = Tamagotchi.all_pets().first().feed_pet()
  end
  if params.has_key?('inlineCheckbox2')
    @activity_level = Tamagotchi.all_pets().first().play()
  end
  if params.has_key?('inlineCheckbox3')
    @sleep_level = Tamagotchi.all_pets().first().sleep_pet()
  end
  erb(:action)
end
