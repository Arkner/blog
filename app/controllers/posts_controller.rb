class PostsController < ApplicationController

  http_basic_authenticate_with :name => "dhh", :password => "secret", :except => [:index, :show]
 
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
	
  def edit
  		@post = Post.find(params[:id])
	end

	def update
  		@post = Post.find(params[:id])
 
 		 if @post.update_attributes(params[:post])
    		redirect_to :action => :show, :id => @post.id
  				else
    			render 'edit'
 	 	 end

	end

	def destroy
  @post = Post.find(params[:id])
  @post.destroy
 
  redirect_to :action => :index
  end


      class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :post
 
      t.timestamps
    end
 
    add_index :comments, :post_id
  end
end


class Comment < ActiveRecord::Base
  belongs_to :post
end


 end
