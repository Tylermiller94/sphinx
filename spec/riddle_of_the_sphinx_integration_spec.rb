require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the riddle path', {:type => :feature}) do
  it('will check if users input matches the answer') do
    visit('/')
    fill_in('riddle1', :with => 'short')
    click_button('Submit')
    expect(page).to have_content('short')
  end
  it('will check if users input matches the answer') do
    visit('/')
    fill_in('riddle2', :with => 'mississippi')
    click_button('Submit')
    expect(page).to have_content('mississippi')
  end
  it('will check if users input matches the answer') do
    visit('/')
    fill_in('riddle3', :with => 'silence')
    click_button('Submit')
    expect(page).to have_content('silence')
  end
  it('will check if users input matches the answer') do
    visit('/')
    fill_in('riddle4', :with => 'glass')
    click_button('Submit')
    expect(page).to have_content('glass')
  end
end
