class UsersController < ApplicationController
  def new
  end

  def index
  end

  def show
    if user_signed_in?
      @user = User.find(params[:id])
      @user_books = @user.books.all
      @book = Book.new
    end
  end

  def edit
  end
end
