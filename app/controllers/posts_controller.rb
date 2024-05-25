class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    post = Post.new(post_params)
    if post.save
      render json: post, status: :created
    else
      render json: post.erros, status: :unprocessable_entity
    end
  end
  def index
    posts = Post.all
    render json: posts
  end

  private
  def post_params
    params.require(:post).permit(:user_id, :content)
  end
end
