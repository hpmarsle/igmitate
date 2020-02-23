class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def create
        # byebug
        @post = current_user.posts.build(post_params)
        @post.save
        redirect_to posts_path
    end

    def index
        # if index is user nested show only current_users posts
        if params[:user_id]
            @user = User.find_by(id: params[:user_id])
            if @user.nil?
              redirect_to posts_path, alert: "Account not found"
            else
              @posts = @user.posts
            end
        #otherwise show all posts from all users
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

    private

    def post_params
        params.require(:post).permit(:caption,:user_id)
    end

end
