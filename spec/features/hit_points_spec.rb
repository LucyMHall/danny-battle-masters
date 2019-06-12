require "capybara/rspec"
require_relative '../../lib/app'

Capybara.app = Battle

feature "view hit points" do
  scenario "see player 2 hit points" do    
    visit("/")
    fill_in :player_1, with: "Shaun" 
    fill_in :player_2, with: "Theresa"
    click_button "Submit"
    
    expect(page).to have_content("Theresa: 60 HP")
  end 
end