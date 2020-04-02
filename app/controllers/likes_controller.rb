class LikesController < ApplicationController
    def create
        like = Like.create!(like_params)
        render json: like
      end
    
      def show
        like = Like.find(params[:id])
        render json: like
      end
    
      private 
    
      def like_params
        params.require(:like).permit(:user_id, :comment_id)
      end
end
