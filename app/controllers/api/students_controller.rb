class Api::StudentsController < ApplicationController
  # GET /students
  def index
    position_title = params[:position_title]
    company_id = params[:company_id]

    @students = Student.all

    @students = Student.joins(:coop_positions).where(coop_positions: { company_id: company_id, position_title: position_title }) if company_id.present? && position_title.present?
    
    render :json => @students
  end

  # GET /students/:id
  def show
    @company = Student.find(params[:id])
    render :json => @company
  end
end
