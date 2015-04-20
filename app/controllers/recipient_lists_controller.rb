class RecipientListsController < ApplicationController
  before_action :set_recipient_list, only: [:show, :edit, :update, :destroy]

  # GET /recipient_lists
  def index
    @recipient_lists = RecipientList.all
  end

  # GET /recipient_lists/1
  def show
  end

  # GET /recipient_lists/new
  def new
    @recipient_list = RecipientList.new
  end

  # GET /recipient_lists/1/edit
  def edit
  end

  # POST /recipient_lists
  def create
    @recipient_list = RecipientList.new(recipient_list_params)

    if @recipient_list.save
      redirect_to @recipient_list, notice: 'Recipient list was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /recipient_lists/1
  def update
    if @recipient_list.update(recipient_list_params)
      redirect_to @recipient_list, notice: 'Recipient list was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /recipient_lists/1
  def destroy
    @recipient_list.destroy
    redirect_to recipient_lists_url, notice: 'Recipient list was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipient_list
      @recipient_list = RecipientList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipient_list_params
      params.require(:recipient_list).permit(:name, :list, :references)
    end
end
