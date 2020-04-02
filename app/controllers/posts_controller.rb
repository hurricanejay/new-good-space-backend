class PostsController < ApplicationController
    def index
        posts = Post.all
        render jason: posts, except: [:created_at, :updated_at]
      end
    
      def destroy
        post = Post.find(params[id])
        post.destroy
      end
    
      def update
        @post = Post.find(params[:id])
        @post.update(post)
        render json: @post
      end
    
      def create
        post = Post.create!(post_params)
            render json: post
      end
    
      def edit
        @post = Post.find(params[:id])
        render json: @post
      end
    
      private
      def post_params
        params.require(:post).permit(:user_id, :location, :category, :tags, :title, :date)
      end 
end
