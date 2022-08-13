class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    @book.user.id = current_user.id
    if @book.save
      redirect_to book_path
    else
      render :new
    end
  end
  
  def index
  end

  def edit
  end

  def show
  end
  
  protected
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
