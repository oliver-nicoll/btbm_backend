class Api::V1::ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]

  # GET /products
  def index
    @products = Product.all

    render json: @products, except: [:created_at, :updated_at]
  
  end

    # GET /products/1
  def show
    render json: @products, except: [:created_at, :updated_at]
  end

  def create
    @product = product.new(product_params)

    if @product.save
      render json: {
        status: 201,
        store: @product
      }, status: :created , location: api_v1_product_path(@product)
    else
      render json: {
        status: 422,
        errors: @product.errors.full_messages.join(", ")
      }, status: :unprocessable_entity
    end
  end
    
  def update
        if @product.update(product_params)
          render json:  {
            status: 204,
            store: @product
          }
        else
          render json: {
          status: 400,
          errors: @product.errors.full_messages(", ")
          }, status: :unprocessable_entity
        end
  end

  def destroy
    if @product.destroy
      render json: {message: "Successfully deleted", store: @product}
    else
      render json: {message: "Failed to delete"}
    end
  end

 
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :description, :price, :image, :stock, :category)
    end

end