class BlogPostsController < ApplicationController
  include Bootsy::Container

  before_action :find_blog_post, only: [:edit, :update, :show, :delete]

  # Index action to render all posts
  def index
    @blog_posts = Blog_Post.all
  end

  # New action creates the posts
  def new
    @blog_post = Blog_Post.new
  end

  # Saves the post into database
  def create
    @blog_post = Blog_Post.new 
    if @blog_post.save(blog_post_params)
      flash.now[:notice] = "Successfully created post!"
      redirect_to  blog_post_path(@blog_post)
    else
      flash.now[:alert] = "Error creating new post!"
      render :new
    end
  end

  def edit
  end

  def update 
    if @blog_post.update_attributes(blog_post_params)
      flash.now[:notice] = "Successfully updated post!"
      redirect_to blog_post_path(@blog_posts)
    else 
      flash[:alert] = "Error updating post!"
      render :edit 
    end 
  end

  def show
  end

  def destroy
    if @blog_post.destroy
      flash.now[:notice] = "Successfully deleted the post!"
      redirect_to blog_posts_path
    else 
      flash.now[:alert] = "Error updating post!"
    end 
  end

  private

  def blog_post_params
    params.require(:blog_post).permit(:title, :body, :bootsy_image_gallery_id)
  end

  def find_post 
    @blog_post = Blog_Post.find(params[:id])
  end

end
