class PostsController < ApplicationController
    def index
        posts = Post.all
        render json: posts, except: [:created_at, :updated_at]
      end
    
      def destroy
        post = Post.find(params[:id])
        post.destroy
      end

      def show
        post = Post.find(params[:id])
        render json: post, includes: [:user, :comments, :likes]
      end

    
      def update
        post = Post.find(params[:id])
        post.update(post_params)
        render json: post
      end
    
      def create
        post = Post.create!(post_params)
            render json: post
      end
    
      def edit
        post = Post.find(params[:id])
        render json: post
      end
    
      private
      def post_params
        params.require(:post).permit(:user_id, :location, :category, :tag, :title, :date, :description)
      end 
end
