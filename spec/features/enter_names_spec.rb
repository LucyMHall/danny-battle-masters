require "capybara/rspec"
require_relative '../../lib/app'

Capybara.app = Battle

feature "Enter players" do  

  scenario "Players can fill in their names" do
    sign_in_and_play
    expect(page).to have_content("Shaun vs. Theresa")
  end
end
