require 'spec_helper'

feature 'Delete a Goal' do
  let(:user) { create(:user, :admin) }
  let!(:goal) { create_list(:goal, 3, user: user) }

  scenario 'A user deletes a goal' do
    log_in(user)
    visit user_goals_path(user)
    within('.user-goals tbody tr:first') do
      click_link 'Delete'
    end
    expect(page).to have_content('Successfully')
    expect(Goal.count).to eq(2)
  end
end
