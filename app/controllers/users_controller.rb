class UsersController < ApplicationController
    def index
        username = Username.all
        render json: username, except: [:created_at, :updated_at]
      end
    
      def create
        user = Username.new(username: params[:username], password: params[:password])
    
        if username.save
          render json: username
      else 
          render json: {errors: user.errors.full_messages}
      end 
    
      def show
        username = Username.find(params[:id])
        render json: username
      end
    
      private
        
      def user_params 
          params.require(:username).permit(:name, :password)
      end 
end
