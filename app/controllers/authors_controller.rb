class AuthorsController < ApplicationController

  def index
  end

  def show
    @author = Author.find(params[:id])
  end
 
  def new
  end

  def create
		@author = Author.new(params.require(:author).permit(:first_name, :last_name, :homepage))
 
	  	@author.save
    	redirect_to @author
    end

end
