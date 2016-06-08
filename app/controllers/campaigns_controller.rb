class CampaignsController < ApplicationController

  def new
    @campaign = Campaign.new
  end

  def create
    #Destroy Links

    #Create Campaign
    @campaign = Campaign.new(campaign_params)
    @campaign.user_id = current_user.id

    if @campaign.save
      redirect_to @campaign
    else
      render 'new'
    end

  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def destroy
    @campaign = Campaign.find(params[:id])
    @campaign.destroy

    redirect_to campaigns_path
  end

  private

  def campaign_params
    params.require(:campaign).permit(:name, :product, :website, :productlink, :description, :date, :title)
  end

end
