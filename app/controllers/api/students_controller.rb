class Api::StudentsController < ApplicationController
  def index
    position_title = params[:position_title]
    company_id = params[:company_id]

    @students = Student.all

    @students = Student.joins(:coop_positions).where(coop_positions: { company_id: company_id, position_title: position_title }) if company_id.present? && position_title.present?
    
    render :json => @students
  end
end
