class Api::CompaniesController < ApplicationController
  # GET /companies
  def index
    company_name = params[:name]
    @companies = Company.all

    @companies = Company.where("name = ?", company_name) if company_name.present?

    render :json => @companies
  end

  # GET /companies/:id
  def show
    @company = Company.find(params[:id])
    render :json => @company
  end
end
