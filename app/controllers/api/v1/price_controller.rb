class Api::V1::PriceController < ApplicationController
  before_action :validate_user, only: [:show]

  def show
    @price_maker = PriceMaker.new(params[:name])
    render json: @price_maker, each_serializer: PriceMakerSerializer
  end
end
