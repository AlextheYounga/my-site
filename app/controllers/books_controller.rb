class BooksController < ApplicationController
  before_action :set_book, only: [:edit, :update, :destroy]
  before_action :restrict, only: [:edit, :update, :new]

  def index
    @books = Book.all
    @categories = BookCategory.all    

    set_meta_tags title: "Reading List",
                  site: "alextheyounger.me",
                  description: "Alex Younger - My Reading List. A list of books that have impacted my life in some way.",
                  reverse: true,
                  og: {
                    title: "About Me",
                    description: "Alex Younger - My Reading List. A list of books that have impacted my life in some way.",
                    type: "website",
                    image: '<%= image_path("hammock-art.png") %>',
                    reverse: true,
                  }
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created"
      redirect_to books_path
    else
      render "new"
    end
  end

  def update
    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated"
      redirect_to books_path
    else
      render "edit"
    end
  end

  def destroy
    @book.destroy
    flash[:notice] = "Book was successfully obliterated"
    redirect_to books_path
  end

  private

  def restrict
    if not logged_in?
      redirect_to root_path
    end
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :subtitle, :category_ids, :image_address, :image_alt, :author)
  end
end