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
end

feature 'View oppenent HP' do
  scenario 'return othe player hp' do
    sign_in_and_play
    expect(page).to have_content('Rory 60 / 100 HP')
  end
end

feature 'Attack other player' do
  scenario 'confirmation of attack' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content('Jenkings attacked Rory')
  end
  scenario 'confirmation damage dealt' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'ok'
    expect(page).to have_content 'Rory 50 / 100 HP'
  end
end
