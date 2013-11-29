require 'spec_helper'

feature "CreateGoal" do
  let(:user)             { create(:user, :admin) }
  let(:start_date)       { Date.today }
  let(:due_date)         { 30.days.from_now }
  let(:difficulty_level) { rand(10) }

  scenario "A user creates a goal" do
    log_in(user)
    visit user_goals_path(user)
    click_on "Create a New Goal!"
    fill_in 'Name', with: Faker::Name.title
    fill_in 'Description', with: Faker::Lorem.paragraph
    fill_in 'Start date', with: start_date
    fill_in 'Due date', with: due_date
    select '5', from: 'Difficulty level'
    click_on 'Create Goal'

    expect(page).to have_content('Successfully')
  end
end
