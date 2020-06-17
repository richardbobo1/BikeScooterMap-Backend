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
    url =  "https://data.lime.bike/api/partners/v1/gbfs/washington_dc/free_bike_status.json"
    uri = URI(url) 
    response = Net::HTTP.get(uri)
    JSON.parse(response)
    render json: response 
  end 

  def helbizbikes
    url =  "https://api.helbiz.com/admin/reporting/washington/gbfs/free_bike_status.json"
    uri = URI(url) 
    response = Net::HTTP.get(uri)
    JSON.parse(response)
    render json: response 
  end 

  def capbikes
    url =  "https://gbfs.capitalbikeshare.com/gbfs/en/station_information.json"
    uri = URI(url) 
    response = Net::HTTP.get(uri)
    JSON.parse(response)
    render json: response 
  end 




end
