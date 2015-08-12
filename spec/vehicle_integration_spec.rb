require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('request vehicle information path', {:type => :feature}) do
  it('processes user request and returns information') do
    visit('/')
    expect(page).to have_content('Add New Vehicle')
  end
end
