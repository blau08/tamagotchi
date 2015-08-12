require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('path to tamagotchi page', {:type => :feature}) do
  it('verifies a new pet added') do
    visit('/')
    fill_in('pet_name', :with => 'lil dragon')
    click_button('Adopt Pet')
    expect(page).to have_content('Congratulations! You have a new pet!')
  end
end
