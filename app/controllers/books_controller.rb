class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to @book.id_path
    else
      render "user/show"
    end
  end

  def index
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
    @book = Book.find(params[:id])
    
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  protected

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
