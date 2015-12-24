require('capybara/rspec')
require('launchy')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the change path', {:type => :feature}) do
  it('processers the user entry number and returns correct change') do
    visit('/')
    fill_in('number', :with => 92)
    click_button('Submit')
    expect(page).to have_content("Your change from 92 cents is 3 quarters 1 dime 1 nickel and 2 pennies.")
  end
end
