class MediaController < ApplicationController

  def index
    title = params[:title]
    @media = Media.search(name)
    json_respon se(@media)
  end

  def paginate
    @media = Media.paginate(page:params[:page], per_page: 5)
    json_response(@media)
  end

  def show
    @meida = Media.find(params[:id])
    json_response(@media)
  end

  def create
    @media = Media.create!(media_params)
    json_response(@media, :created)
  end

  def random
    @media = Media.all.sample
    json_response(@media)
  end

  def update
    @media = Media.find(params[:id])
    if @media.update!(media_params)
      render status: 200, json: {
     message: "You've updated your post"
     }
    end
  end

  def destroy
    @media = Media.find(params[:id])
    if @media.destroy
      render status: 200, json: {
        message: "you've sucessfully deleted your post"
      }
    end
  end

  private

  def media_params
    params.permit(:title, author)
  end
end