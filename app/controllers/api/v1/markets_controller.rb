class Api::V1::MarketsController < ApplicationController
  before_action :set_market, only: [:show, :update, :destroy]

  # GET /markets
  def index
    @markets = Market.all

    render json: @markets, only: [:id, :name, :description], include: {
      products: {
          except: [:created_at, :updated_at]
      }
  }
  end

    # GET /markets/1
  def show
    render json: @market, only: [:name, :id], include: {
      products: {
        except: [:created_at, :updated_at]
      }
    }
  end

  def create
    @market = Market.new(market_params)

    if @market.save
      render json: {
        status: 201,
        store: @market
      }, status: :created , location: api_v1_market_path(@market)
    else
      render json: {
        status: 422,
        errors: @market.errors.full_messages.join(", ")
      }, status: :unprocessable_entity
    end
  end
    
  def update
        if @market.update(market_params)
          render json:  {
            status: 204,
            store: @market
          }
        else
          render json: {
          status: 400,
          errors: @market.errors.full_messages(", ")
          }, status: :unprocessable_entity
        end
  end

  def destroy
    if @market.destroy
      render json: {message: "Successfully deleted", store: @market}
    else
      render json: {message: "Failed to delete"}
    end
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