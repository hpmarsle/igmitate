class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def create
        @post = Post.new
        @post.caption = params[:caption]
        @post.save
        redirect_to posts_url
    end

    def index
        # if index is nested show only current_users posts
        if params[:user_id]
            @user = User.find_by(id: params[:user_id])
            if @user.nil?
              redirect_to posts_path, alert: "Account not found"
            else
              @posts = @user.posts
            end
        else
            @posts = Post.all
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
    end

    def destroy
    end
end
