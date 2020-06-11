class JournalsController < ApplicationController
  def index
    journals = Journal.all 
    render json: journals.as_json(:include => [:user])
  end

  def show
    journals = Journal.where(user_id: params[:id])
    render json: journals
  end

  def create
    journal = Journal.create(journal_params)
    render json: journal 
  end


  private 
  
  def journal_params 
    params.require(:journal).permit(:user_id, :date, :duration, :distance, :difficulty, :calories, :notes)
  end 
end

