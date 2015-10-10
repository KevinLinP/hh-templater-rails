class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])

    render :new
  end

  def create
    @post = Post.create(post_params)

    if @post.persisted?
      redirect_to post_path(post)
    else
      render action: :new
    end
  end

  def post_params
    params.require(:post).permit(
      :email_subject, :venue_name,
      :location_name, :short_address, :start_time, :body,
      :maps_url, :header_image_url, :footer_image_url
    )
  end

end
