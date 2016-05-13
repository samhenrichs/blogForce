class LinksController < ApplicationController

  def index
    @links = Link.all.order("created_at DESC")
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)

    if @link.save
      redirect_to @link
    else
      render 'new'
    end

  end

  def show
      @link = Link.find(params[:id])
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])

    if @link.update(link_params)
      redirect_to @link
    else
      render 'edit'
    end

  end

  def destroy
    @link = Link.find(params[:id])

    @link.destroy
    redirect_to root_path
  end

  private

  def link_params
    params.require(:link).permit(:title, :url, :description, :image)
  end

end
