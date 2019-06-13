feature "Attack player 2" do
  scenario "player 1 gets confirmation of attack" do
    sign_in_and_play    
    click_link("Attack")     
    expect(page).to have_content("Shaun attacks Theresa")
  end
end