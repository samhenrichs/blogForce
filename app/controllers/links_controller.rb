class LinksController < ApplicationController

  def index
    @links = Link.all.order("created_at DESC")
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    @link.save
  end

  def show
      @link = Link.friendly.find(params[:id])

      if user_signed_in?

      else
        redirect_to "/pages/oops"
      end
  end

  def edit
    @link = Link.friendly.find(params[:id])

    @link.id = @link.title

  end

  def update
    @link = Link.friendly.find(params[:id])

    if @link.update(link_params)
      redirect_to @link
    else
      render 'edit'
    end

  end

  def destroy
    @link = Link.friendly.find(params[:id])

    @link.destroy
    redirect_to root_path
  end

  private

  def link_params
    params.require(:link).permit(:title, :url, :description, :image, :product, :cheese)
  end

end
