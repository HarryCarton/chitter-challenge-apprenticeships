feature 'Viewing peeps' do
  scenario 'visiting peeps page' do
    visit('/peeps')
    expect(page).to have_content 'This is a peep!'
  end
end