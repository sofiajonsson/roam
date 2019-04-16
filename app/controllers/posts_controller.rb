class PostsController < ApplicationController

  before_action :set_post, only: [:edit, :update, :destroy, :show]

  def index
  end

  def new
    @post = Post.new
  end

  def show
  end

  def create
    @post = Post.new(post_params(:title, :description, :user_id, :post_id))
    if @post.save
      redirect_to post_path(@post)
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to new_post_path
    end
  end

  def edit
  end

  def update
    if @post.update(post_params(:title, :description))
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

  def post_params(*args)
    params.require(:post).permit(*args)
  end

end
