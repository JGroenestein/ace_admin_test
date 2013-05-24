class ApplicationController < ActionController::Base
  protect_from_forgery

  def show
    @user = User.find(params[:id])
  end

  def new
  end
end
