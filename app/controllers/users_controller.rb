class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  layout('application.html.haml')

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

end
