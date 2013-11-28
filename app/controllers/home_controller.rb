class HomeController < ApplicationController

  layout('application.html.haml')

  def index
    @users = User.all
  end
end
