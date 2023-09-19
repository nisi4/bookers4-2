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
  end
  
  private
  def is_matching_login_user
    user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_to root_path
    end
  end
end
