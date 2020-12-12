class PostController < ApplicationController

  def index
    'test'
    
  end

  def paginate
    @post = Post.paginate(page:params[:page], per_page: 5)
    
  end

  def show
    @post = Post.find(params[:id])
    json_response(@post)
  end

  def create
    @post = Post.create!(media_params)
    json_response(@post, :created)
  end

  def random
    @post = Post.all.sample
    json_response(@post)
  end

  def update
    @post = Post.find(params[:id])
    if @post.update!(media_params)
      render status: 200, json: {
     message: "You've updated your post"
     }
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      render status: 200, json: {
        message: "you've sucessfully deleted your post"
      }
    end
  end

  private

  def media_params
    params.permit(:description, :author, :likes)
  end
end