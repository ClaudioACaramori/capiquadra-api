class Api::V1::CourtsController < ApplicationController
  def index
    courts = Court.all

    render json: courts, status: :ok
  end
end