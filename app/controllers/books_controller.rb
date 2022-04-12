class BooksController < ApplicationController

  def create
    @book = Book.new(book_paramss)
    @book.user_id = current_user.id
    if @book.save
      flash[:notice] ="You have created book successfully."
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
  end

  private

  def book_paramss
    params.require(:book).permit(:title, :body)

  end
end
