class UsersController < ApplicationController
  respond_to :html

  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    respond_with(@user)
  end

  def home
    @user = current_user
    respond_with(@user)
  end

  def index
    @users = User.all
    respond_with(@users)
  end
end
