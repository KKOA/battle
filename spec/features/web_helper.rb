def sign_in_and_play
  visit('/')
  fill_in(:player1_name, with: 'Jenkings')
  fill_in(:player2_name, with: 'Rory')
  click_button('Battle')
end
