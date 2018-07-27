class Api::V1::ReviewsController < ApplicationController
  before_action :find_review, only: [:update, :show]

  def index
    @reviews = Review.find_by(product_id: params[:product_id] )
    render json: @reviews

  end

  def show
    @review
    render json: @review
  end

  def update
    @review.update(review_params)
    if @review.save
      render json: @review, status: :accepted
    else
      render json: { errors: @review.errors.full_message }, status: :unprocessible_entity
    end
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      render json: @review, status: :accepted
    else
      render json: { errors: @review.errors.full_message }, status: :unprocessible_entity
    end
  end

  private

  def review_params
    params.permit(:user_id, :content)
  end

  def find_review
    @review = Review.find(params[:id])
  end

end
