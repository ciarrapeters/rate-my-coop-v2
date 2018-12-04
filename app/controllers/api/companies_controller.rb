class Api::CompaniesController < ApplicationController
  def index
    company_name = params[:name]

    @companies = Company.all

    @companies = Company.where("name = ?", company_name) if company_name.present?

    render :json => @companies
  end
end
