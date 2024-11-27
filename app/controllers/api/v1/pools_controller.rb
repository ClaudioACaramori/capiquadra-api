# frozen_string_literal: true

class Api::V1::PoolsController < ApplicationController
  def index
    pools = Pool.all

    render json: pools, status: :ok
  end
end
