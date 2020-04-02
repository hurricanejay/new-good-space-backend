class LikesController < ApplicationController
    def create
        like = Like.create!(like_params)
        render json: like
      end
    
      def show
        like = Like.find(params[:id])

        render json: like, includes: :user
      end


    def index
      likes = Like.all
      render json: likes
  end

      private 
    
      def like_params
        params.require(:like).permit(:user_id, :comment_id)
      end
end
