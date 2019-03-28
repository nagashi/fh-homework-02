class BooksController < ApplicationController
  def index
    @books = Book.order(:title).all
  end

  def new
    @book = Book.new
  end

  def create
    Book.create(book_params)
    redirect_to root_path
  end

 
end


 private

  def book_params
    params.require(:book).permit(:title, :author, :genre, :publisher, :types, :year, :isbn)
  end