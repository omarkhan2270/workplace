feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in 'name', with: 'Omar'
    click_button 'Submit'
    expect(page).to have_content 'Omar'
  end
end