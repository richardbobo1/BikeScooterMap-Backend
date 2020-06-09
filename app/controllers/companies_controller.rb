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

  # def request_api_find_bikes(url)

  #     response = Excon.get(
  #       url,
  #       headers: {
  #         'X-RapidAPI-Host' => URI.parse(url).host,
  #         'X-RapidAPI-Key' => ENV.fetch('RAPIDAPI_API_KEY')
  #       }
  #     )
  #     return nil if response.status != 200
  #     JSON.parse(response.body)
  # end 



end
