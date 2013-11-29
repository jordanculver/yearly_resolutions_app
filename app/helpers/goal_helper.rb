module GoalHelper

  def goal_status_select
    Goal::STATUSES.map do |goal|
      [goal.humanize, goal]
    end
  end
end
