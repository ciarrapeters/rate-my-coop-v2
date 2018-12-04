class Api::CoopPositionsController < ApplicationController
  def index
    company_id = params[:company_id]
    @coop_positions = CoopPosition.all

    @coop_positions = CoopPosition.where("company_id = ?", company_id) if company_id.present?

    render :json => @coop_positions
  end
end
