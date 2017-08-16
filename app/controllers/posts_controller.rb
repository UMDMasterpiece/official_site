class PostsController < ApplicationController
  
    before_action :find_post, only: [:edit, :update, :show, :delete]
    before_action :authenticate_user!, except: [:index, :show]
  
    # Index action to render all posts
    def index
      @posts = Post.all
    end
  
    # New action creates the posts
    def new
      @post = Post.new
    end
  
    # Saves the post into database
    def create
      @post = Post.new 
      if @post.save(post_params)
        flash.now[:notice] = "Successfully created post!"
        redirect_to  post_path(@post)
      else
        flash.now[:alert] = "Error creating new post!"
        render :new
      end
    end
  
    def edit
    end
  
    def update 
      if @post.update_attributes(post_params)
        flash.now[:notice] = "Successfully updated post!"
        redirect_to post_path(@posts)
      else 
        flash[:alert] = "Error updating post!"
        render :edit 
      end 
    end
  
    def show
    end
  
    def destroy
      if @post.destroy
        flash.now[:notice] = "Successfully deleted the post!"
        redirect_to posts_path
      else 
        flash.now[:alert] = "Error updating post!"
      end 
    end
  
    private
  
    def post_params
      params.require(:post).permit(:title, :body)
    end
  
    def find_post 
      @post = Post.find(params[:id])
    end
  

end
