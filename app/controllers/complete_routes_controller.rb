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
        render json: completedroute.as_json(:include => [:route])
      end 

      def destroy
        completedroute = CompleteRoute.find_by(id: params[:id])
        completedroute.destroy
        render json: completedroute
      end 


    
      private 
      
      def comproute_params 
        params.require(:complete_route).permit(:user_id,:route_id,:completed)
      end 


end
