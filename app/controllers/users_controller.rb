class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end

    def show
      user = User.find(params[:id])
      render json: user
    end

    def usersposts
      user = User.find(params[:id])
      # usersposts = user.posts
      puts user
      render json: user, include: [:posts]
    end

    
      def create
        user = User.new(user_params)
    
        if user.save
          render json: user
      else 
          render json: {errors: user.errors.full_messages}
      end 
    end
    
      private
        
      def user_params 
          params.require(:user).permit(:username, :password)
      end 

    end

