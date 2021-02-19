feature 'Viewing peeps' do
  scenario 'visiting peeps page' do
    sign_in_and_submit
    click_link('View all peeps')
    expect(page).to have_content 'This is a peep!'
  end
end