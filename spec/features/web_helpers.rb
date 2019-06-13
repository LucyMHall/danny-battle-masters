def sign_in_and_play
  visit("/")
    fill_in :player_1, with: "Shaun" 
    fill_in :player_2, with: "Theresa"
    click_button "Submit"
end

