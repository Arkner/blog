class PostsController < ApplicationController
  def new
  end

   def create
   	 @post = Post.new(params[:post])
 
  @post.save
  redirect_to :action => :show, :id => @post.id
  end

   def show
   	@post = Post.find(params[:id])
  end

   def index
  @posts = Post.all
  end

   def destroy
  end

   def edit
  end

   def update
  end

end
