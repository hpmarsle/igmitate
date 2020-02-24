class PostsController < ApplicationController
    def new
        @post = Post.new
    end
    
    def create
        if params[:user_id] 
            @user = User.find_by(id: params[:user_id])
            if @user == current_user
                @post = current_user.posts.build(post_params)
                @post.save
                redirect_to posts_path
            else
                redirect_to new_post_path, alert: "You cannot create posts for other accounts"
            end
        else 
            @post = current_user.posts.build(post_params)
            @post.save
            redirect_to posts_path
        end
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
        
        if params[:user_id]
            @user = User.find_by(id: params[:user_id])
            if @user != current_user
                redirect_to posts_path, alert: "You're not the owner of this post"
            else
                @post = @user.posts.find_by(id: params[:id])
                redirect_to user_posts_path(@user), alert: "The post does not exist" if @post.nil?
            end
        else 
            @post = Post.find(params[:id])
            if @post.user != current_user
                redirect_to posts_path, alert: "You're not the owner of this post"
            end
        end
    end

    def update
        @post = Post.find(params[:id])

        @post.update(post_params)
    
        if @post.save
          redirect_to @post
        else
          render :edit
        end
    end

    def destroy
    end

    private

    def post_params
        params.require(:post).permit(:caption,:user_id)
    end

end
