require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('request vehicle information path', {:type => :feature}) do
  it('loads the home page') do
    visit('/')
    expect(page).to have_content('Add New Vehicle')
  end

  it('loads /vehicles page and lists all vehicles') do
    visit('/vehicles')
    expect(page).to have_content('All Vehicles')
  end  

end
