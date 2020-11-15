class BookCategoriesController < ApplicationController
  before_action :restrict
  def index
    @categories = BookCategory.all
  end

  def create
    @category = BookCategory.new(category_params)
    if @category.save
      flash[:success] = "Category was successfully created"
      redirect_to categories_path
    else
      render "new"
    end
  end

  def new
    @category = BookCategory.new
  end

  def edit
    @category = BookCategory.find(params[:id])
  end

  def update
    @category = BookCategory.find(params[:id])
    if @category.update(category_params)
      flash[:success] = "Name was successfully updated"
      redirect_to book_categories(@category)
    else
      render "edit"
    end
  end
  
  private
  def restrict
    if not master_logged_in?
      redirect_to root_path
    end
  end
end
