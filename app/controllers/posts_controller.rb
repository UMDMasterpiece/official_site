class PostsController < ApplicationController
  
    before_action :find_post, only: [:edit, :update, :show, :delete]
    before_action :authenticate_user!, except: [:index, :show]
  
    # Index action to render all posts
    def index
      @posts = Post.where(params[:id]).order("created_at DESC").paginate(:page => params[:page], :per_page => 4)
    end
  
    # New action creates the posts
    def new
      @post = Post.new
    end
  
    # Saves the post into database
    def create
      @post = Post.new (post_params)
      @post.user = current_user
      if @post.save
        flash.now[:notice] = "Successfully created post!"
        redirect_to post_path(@post)
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
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to myposts_path
    end

    def myposts
      @post = Post.where(user: current_user)
    end
  
    private
  
    def post_params
      params.require(:post).permit(:title, :body, :description, :image)
    end
  
    def find_post 
      @post = Post.find(params[:id])
    end
  

end
