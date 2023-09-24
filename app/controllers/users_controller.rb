class UsersController < ApplicationController
  before_action :is_matching_login_user, only: [:show]
  
  def new
  end

  def index
    @user = current_user
    @users = User.all
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @user_books = @user.books.all
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_show_path(@user.id)
  end
  
  private
  def is_matching_login_user
    user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_to root_path
    end
  end
  
  def user_params
    params.require(:user).permit(:name,:image,:introduction)
  end
end
