class CompleteRoutesController < ApplicationController

    def index
        completedroutes = CompleteRoute.all 
        render json: completedroutes.as_json(:include => [:route])
      end
    
      def show 
        completedroutes = CompleteRoute.where(user_id: params[:id])
        render json: completedroutes.as_json(:include => [:route])
      end 
    
      
      def create 
        completedroute = CompleteRoute.create(comproute_params)
        render json: favorite, include: [:route]
      end 
    
      private 
      
      def comproute_params 
        params.require(:completedroute).permit(:user_id,:route_id)
      end 


end
