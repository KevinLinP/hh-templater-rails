class PostsController < ApplicationController

  def new
    @post = Post.new(date: friday)
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.create(post_params)

    if @post.persisted?
      redirect_to post_path(@post)
    else
      render action: :new
    end
  end

  def send_email
    @post = Post.find(params[:id])
    redirect_to post_path(@post)
  end

  protected

  def post_params
    params.require(:post).permit(
      :email_subject, :venue_name, :date,
      :location_name, :short_address, :start_time, :body,
      :maps_url, :header_image_url, :footer_image_url
    )
  end

  def friday
    date  = Date.parse('Friday')
    delta = date >= Date.today ? 0 : 7
    date + delta
  end

end
