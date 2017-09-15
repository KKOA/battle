feature 'homepage' do #describe
  scenario 'return content' do #context
    visit('/')
    expect(page).to have_content 'Enter your names to do
!! Battle !!'
    #page - current page
  end
end
