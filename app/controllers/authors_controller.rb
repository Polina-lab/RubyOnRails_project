class AuthorsController < ApplicationController
  def index
    @authors = Author.all
    @articles = Article.all
  end

  

  def show
    @author = Author.find(params[:id])
    @articles = Article.all
  end

  def new
    @author = Author.new
  end

  def create
    # begin
    #   @author = Author.new(author_params)
    # rescue ActiveRecord::RecordNotUnique => exception
    #   retry if (tries += 1) == 1
    #   raise exception
    # end

    @author = Author.new(author_params)

    if @author.save
      redirect_to(@author, :notice => 'Author was successfully created.')
    else
      
      render :new, status: :unprocessable_entity
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
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.destroy

    redirect_to articles_path, status: :see_other
  end

  

  private
    def author_params
      params.require(:author).permit(:fname, :lname, :email, :status)
    end

end
