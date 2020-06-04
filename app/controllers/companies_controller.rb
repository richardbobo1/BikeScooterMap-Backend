class CompaniesController < ApplicationController
  def index
    companies = Company.all 
    render json: companies 
  end

  def show 
    company = Company.find(params[:id])
    # need to fetch bikes using companies :fetch_url link 
    render json: company 

  end 
end
