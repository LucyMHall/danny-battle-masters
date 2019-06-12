require "capybara/rspec"
require_relative '../../app'

Capybara.app = Battle

feature "enter players" do  

  scenario "Players can fill in their names" do
    visit("/")
    fill_in :player_1, with: "Shaun" 
    fill_in :player_2, with: "Theresa"
    click_button "Submit"

    expect(page).to have_content("Shaun vs. Theresa")
  end
end