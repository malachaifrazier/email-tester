class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  def index
    @campaigns = Campaign.order('created_at DESC')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @campaigns }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @campaign }
    end
  end

  def new
    @campaign = current_user.campaigns.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @campaign }
    end
  end

  def edit
  end

  def create
    # gimmie = params[:campaign].merge params.except("campaign", "action", "controller", "url")
    @campaign = current_user.campaigns.new(campaign_params)
    respond_to do |format|
      if @campaign.save
        format.html { redirect_to campaigns_url, status: 301, #redirect_to @user, status: 301,
         notice: 'Campaign was successfully created.' }
        format.json { render json: @campaign, status: :created, location: @campaign }
      else
        format.html { render action: "new" }
        format.json { render json: @campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @campaign.update_attributes(campaign_params)
        format.html { redirect_to :back, status: 301, notice: 'Campaign was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @campaign.destroy
    respond_to do |format|
      format.html { redirect_to campaigns_url }
      format.json { head :no_content }
    end
  end

  private
  def set_campaign
    @campaign = Campaign.find(params[:id])
  end

  def campaign_params
    params.require(:campaign).permit(:id, :user, :completion_status, :name, :client_name)
  end
end
