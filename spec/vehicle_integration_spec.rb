require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('request vehicle information path', {:type => :feature}) do
  it('loads the home page') do
    visit('/')
    expect(page).to have_content('Add a vehicle')
  end

  it('loads /vehicles page and lists all vehicles') do
    visit('/vehicles')
    expect(page).to have_content('All Vehicles')
  end

  it('loads /vehicles/new page and shows a form to add new vehicle') do
    visit('/vehicles/new')
    expect(page).to have_content('Add a vehicle')
  end

end
