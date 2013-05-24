class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def login
    @user = User.new
    @failed_form = false
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "New user successfully created"
      redirect_to @user
    else
      @failed_form = true
      render 'login'
    end
  end

  def index
    @user = User.new
    @failed_form = false
    render 'login'
  end
end