class Api::V1::MarketsController < ApplicationController
  before_action :set_market, only: [:show, :update, :destroy]

  # GET /markets
  def index
    @markets = Market.all

    render json: @markets, only: [:id, :name, :description], include: :products
  end

 
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_market
      @market = Market.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def market_params
      params.require(:market).permit(:name, :description)
    end

end