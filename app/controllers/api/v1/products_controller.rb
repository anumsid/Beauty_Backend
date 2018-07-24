class Api::V1::ProductsController < ApplicationController
  before_action :find_product, only: [:update, :show]

  def index
    @products = Product.all
    render json: @products
  end

  def show
    @product
    render json: @product
  end

  def update
    @product.update(product_params)
    if @product.save
      render json: @product, status: :accepted
    else
      render json: { errors: @product.errors.full_message }, status: :unprocessible_entity
    end
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: :accepted
    else
      render json: { errors: @product.errors.full_message }, status: :unprocessible_entity
    end
  end

  private

  def product_params
    params.permit(:title, :description, :category, :price, :imgURL, :lightURL, :medURL, :darkURL)
  end

  def find_product
    @product = Product.find(params[:id])
  end

end
