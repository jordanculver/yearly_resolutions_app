require 'spec_helper'

feature 'User only sees their own Goals' do
  let(:user) { create(:user, :admin) }
  let(:user2) { create(:user, :admin) }

  let!(:goals) { create_list(:goal, 3, user: user) }
  let!(:goals1) { create_list(:goal, 2, user: user2) }

  background do
    log_in(user)
  end

  scenario 'A user sees their own goals' do
    visit user_goals_path(user)
    expect(page).to have_content(user.goals.first.name)
    expect(page).to_not have_content(user2.goals.first.name)
  end

  scenario 'A user tries to visit another users goals' do
    visit user_goals_path(user2)

    expect(page).to have_content(user.goals.first.name)
    expect(page).to_not have_content(user2.goals.first.name)
  end
end
