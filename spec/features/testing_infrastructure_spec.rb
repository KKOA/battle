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
    visit('/')
    fill_in(:player1_name, with: 'Jenkings')
    fill_in(:player2_name, with: 'Rory')
    click_button('Battle')
    expect(page).to have_content('Jenkings vs Rory')
  end
end

feature 'View oppenent HP' do
  scenario 'return othe player hp' do
    visit('/')
    fill_in(:player1_name, with: 'Jenkings')
    fill_in(:player2_name, with: 'Rory')
    click_button('Battle')
    expect(page).to have_content('Rory 60Hp')
  end
end
