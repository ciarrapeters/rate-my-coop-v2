class Api::CoopPositionsController < ApplicationController
  # GET /coop_positions
  def index
    company_id = params[:company_id]
    @coop_positions = CoopPosition.all

    @coop_positions = CoopPosition.where("company_id = ?", company_id) if company_id.present?

    render :json => @coop_positions
  end

  # GET /coop_positions/:id
  def show
    @coop_position = CoopPosition.find(params[:id])
    render :json => @coop_position
  end
end
