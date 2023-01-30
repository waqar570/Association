class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end
  def show
    @author = Author.find(params[:id])
  end
  def new
    @author = Author.new
  end
  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to @author
    else
      render :new
    end
  end
  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])

    if @author.update(author_params)
      redirect_to @author
    else
      render :edit
    end
  end
  def destroy
    @author = Author.find(params[:id])
    @author.destroy

    redirect_to root_path
  end
  private
    def author_params
      params.require(:author).permit(:name)
    end
end

# Book Model create
# After destroy redirect to root root_path
# Book Model Attribute(Name,author_id,published_at)
# Association with author