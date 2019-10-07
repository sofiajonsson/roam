class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @current_user = current_user
    @post = Post.new
    @location = Location.new
  end

  def show
    @current_user = current_user
    @comments = @post.comments
    @comment = Comment.new
  end

  def create
    post = Post.new(post_params)
    if post.save
      redirect_to post_path(post)
    else
      flash[:errors] = post.errors.full_messages
      redirect_to new_post_path
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to edit_post_path
    end
  end

  def destroy
    @post.destroy
    flash[:message] = "Successfully deleted post"

    ## change to user profile page?
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit!
  end

end
