class AceAdminPanelController < ApplicationController
  def elements
    @user = User.find(params[:id])
  end

  def buttons
    @user = User.find(params[:id])
  end

  def index
    @user = User.find(params[:id])
  end
end
