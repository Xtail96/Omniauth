class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    # stub
  end

  def create
    # stub
  end

  def update
    # stub
  end

  def destroy
    # stub
  end
end
