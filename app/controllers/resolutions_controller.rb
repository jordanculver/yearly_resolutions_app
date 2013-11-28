class ResolutionsController < ApplicationController
  def index
    @resolutions = Resolution.all
  end

  def show
    @resolution = Resolution.find(params[:id])
  end
end
