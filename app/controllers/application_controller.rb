class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end


end
