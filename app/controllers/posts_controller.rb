class PostsController < ApplicationController

  before_action :authenticate_club!, only: [:edit, :update, :destroy, :new, :create]

  def index
    @posts = Post.all
  end

  def new
    @posts = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    post = Post.new(post_params)
    if post.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def destroy
  Post.find(params[:id]).destroy
  redirect_to action: :index
end

private
 def post_params
   params.require(:post).permit(:body, :club_id)
 end

end
