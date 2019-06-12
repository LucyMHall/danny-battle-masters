require "capybara/rspec"
require_relative '../../app'

Capybara.app = Battle

feature "homepage" do
  scenario "Testing Infrastructure working!" do
    visit("/")
    expect(page).to have_content "Testing Infrastructure working!"
  end
end


