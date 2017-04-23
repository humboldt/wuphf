class Api::V1::RecipientsController < Api::V1::ApiController
  respond_to :json

  def index
    respond_with Recipient.all
  end

  def show
    respond_with Recipient.find(params[:id])
  end
end
