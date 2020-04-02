class CommentsController < ApplicationController
    def create
        comment = Comment.create!(comment_params)
        render json: comment
    end

    def index
        comments = Comment.all
        render json: comments
    end

  
    def show
        comment = Comment.find(params[:id])
        render json: comment, includes: :user
    end

    private

    def comment_params
        params.require(:comment).permit(:user_id, :post_id)
    end

end
