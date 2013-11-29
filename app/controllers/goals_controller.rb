class GoalsController < ApplicationController

  def index
    @goals = current_user.goals
  end

  def edit
    @goal = current_user.goals.find(params[:id])
  end

  def show
    @goal = current_user.goals.find(params[:id])
  end

  def new
    @goal = current_user.goals.build
  end

  def create
    @goal = current_user.goals.build(goal_params)

    if @goal.save
      redirect_to [current_user, :goals], notice: 'Successfully Created Goal!'
    else
      render :edit
    end
  end

  def update
    @goal = current_user.goals.find(params[:id])
    if @goal.update_attributes(goal_params)
      redirect_to [current_user, :goals], notice: 'Successfully Updated Goal'
    else
      render :edit
    end
  end

  def destroy
    Goal.find(params[:id]).destroy
    redirect_to [current_user, :goals], notice: 'Successfully Deleted Goal'
  end

  private

  def goal_params
    params.require(:goal).permit(
      :status,
      :name,
      :description,
      :start_date,
      :due_date,
      :user_id,
      :difficulty_level
    )
  end
end
