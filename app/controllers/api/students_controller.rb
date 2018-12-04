class Api::StudentsController < ApplicationController
  def index
    position_title = params[:position_title]
    company_id = params[:company_id]

    #@students = Student.all

    @students = Student.where(id: CoopPosition.where("position_title = ?", position_title).where("company_id = ?", company_id).first.student_id)
    
    render :json => @students
  end
end
