require "prawn"

class AuthorsController < ApplicationController
  # http_basic_authenticate_with name: "dhh", password: "secret", 
  #  except: [:index, :show]
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
      AMailer.send_signup_email(@author).deliver
      redirect_to(@author, :notice => 'Author is created')
      #redirect_to @author
    else
      #render :new
      flash.now[:error] = "Could not save Author"
      render action: "new"
    end
  end
  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])

    if @author.update(author_params)
      flash[:notice] = "You have successfully updated the author."

      redirect_to @author ,notice: "You have successfully logged out."
    else
      render :edit
    end
  end
  def destroy
    @author = Author.find(params[:id])
    @author.destroy
    flash[:notice] = "You have successfully destroyed the author."


    redirect_to root_path , notice: "You have successfully deleted the Author."
  end

  def download_pdf
    author = Author.find(params[:id])
    send_data generate_pdf(author),
              filename: "#{author.name}.pdf",
              type: "application/pdf"
  end

  private

  def generate_pdf(author)
    Prawn::Document.new do
      text author.name, align: :center
      text "Ttile: #{author.title}"
    end.render
  end

  def author_params
    params.require(:author).permit(:name)
  end
end

# Book Model create
# After destroy redirect to root root_path
# Book Model Attribute(Name,author_id,published_at)
# Association with author


