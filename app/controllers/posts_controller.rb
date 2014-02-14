class PostsController < ApplicationController
  def new
  end

   def create
   	render :text => params[:post].inspect
  end

   def show
  end

   def index
  end

   def destroy
  end

def edit
  end

   def update
  end

end
