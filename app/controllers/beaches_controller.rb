class BeachesController < ApplicationController
  # respond_to :json

  def index
    beaches = Beach.all
    render json: beaches
  end
end
