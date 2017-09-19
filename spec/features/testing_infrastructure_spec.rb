feature 'homepage' do # describe
  scenario 'return homepage' do # context
    visit('/')
    expect(page).to have_content 'Enter your names to do
!! Battle !!'
    # page - current page
  end
end

feature 'Enter names' do
  scenario 'return player names' do
    sign_in_and_play
    expect(page).to have_content('Jenkings vs Rory')
  end

  scenario 'name missing' do
    visit('/')
    click_button('Battle')
    expect(page).to have_content 'Player name cannot be empty'
  end
end

feature 'View oppenent HP' do
  scenario 'return other player hp' do
    sign_in_and_play
    expect(page).to have_content('Rory 60 / 100 HP')
  end
end

feature 'View our HP' do
  scenario 'return our player hp' do
    sign_in_and_play
    expect(page).to have_content('Jenkings 60 / 100 HP')
  end
end

feature 'Attack other player' do
  scenario 'confirmation of attack' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content('Jenkings attacked Rory')
  end
  scenario 'confirmation of attack2' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'ok'
    click_link 'Attack'
    expect(page).to have_content('Rory attacked Jenkings')
  end

  scenario 'confirmation damage dealt' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'ok'
    expect(page).to have_content 'Rory 50 / 100 HP'
  end
  scenario 'confirmation damage dealt2' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'ok'
    click_link 'Attack'
    click_button 'ok'
    expect(page).to have_content 'Jenkings 50 / 100 HP'
  end
end

feature 'See current players' do
  scenario 'return player turn' do
    sign_in_and_play
    expect(page).to have_content 'Jenkings\'s turn'
  end
end

feature 'switch turn' do
  scenario 'return player2' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'ok'
    expect(page).to have_content 'Rory\'s turn'
  end
  scenario 'return player1' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'ok'
    click_link 'Attack'
    click_button 'ok'
    expect(page).to have_content 'Jenkings\'s turn'
  end
end
