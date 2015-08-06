require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(show_exceptions: false)

describe 'the coin combination path', { type: :feature } do
  it 'processes the user input and returns the amount in coins' do
    visit '/'
    fill_in 'number', with: 50
    click_button 'Send'
    expect(page).to have_content('2 quarters, 0 dimes, 0 nickels, 0 pennies')
  end

end
