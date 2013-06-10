class AceAdminPanelController < ApplicationController
  def elements
    if signed_in?
      @user = current_user
      render 'elements'
    else
      render 'sessions/new'
    end
  end

  def allusers
    @user = current_user
    @ace_admin_panel = User.paginate(page: params[:page], :per_page => 8)
  end

  def buttons
    if signed_in?
      @user = current_user
      render 'buttons'
    else
      render 'sessions/new'
    end
  end

  def index
    if signed_in?
      @user = current_user
      render 'index'
    else
      render 'sessions/new'
    end
  end
end
