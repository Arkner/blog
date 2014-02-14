class PostsController < ApplicationController
 
  def new
  	 @post = Post.new
  end

  def create
  @post = Post.new(params[:post])
 
  if @post.save
    redirect_to :action => :show, :id => @post.id
  else
    render 'new'
  end
end

   def show
   	@post = Post.find(params[:id])
  end

   def index
  @posts = Post.all
  end
 end
