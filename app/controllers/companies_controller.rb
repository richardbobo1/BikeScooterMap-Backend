require 'net/http'
require 'json'

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


  def jumpbikes
    url =  "https://gbfs.uber.com/v1/dcb/free_bike_status.json"
    uri = URI(url) 
    response = Net::HTTP.get(uri)
    JSON.parse(response)
    render json: response 
  end 



end
