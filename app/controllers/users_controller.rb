class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def login
    @user = User.new
    @failed_form = true
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "New user successfully created"
      redirect_to root_path
    else
      @failed_form = true
      render 'login'
    end
  end

  def index
    @user = User.new
    @failed_form = true
    render 'login'
  end
end