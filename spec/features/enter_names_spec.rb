feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Anne'
    fill_in :player_2_name, with: 'Louise'
    click_button 'Submit'
    expect(page).to have_content 'Anne vs. Louise'
  end
end