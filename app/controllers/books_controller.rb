class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end

  def index
    @user = current_user
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book.id)
    end
  end
  
  def update
    
  end
  
  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
