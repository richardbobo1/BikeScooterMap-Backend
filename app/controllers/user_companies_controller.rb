class UserCompaniesController < ApplicationController
  def index
    usercompany = UserCompany.all 
    render json: usercompany 
  end



end
