class PostsController < ApplicationController
    def show
        @user=User.find(params[:user_id])
        @posts=@user.posts.find(params[:id])
    end
    
    def new
        @user=User.find(params[:user_id])
        @post=Post.new
    end

    def create
        @user=User.find(params[:user_id])
        @user.posts.create(post_params)
        redirect_to user_path(@user)
    end

    def edit
        @user=User.find(params[:user_id])
        @posts=@user.posts.find(params[:id])
    end
    def update
        @posts=Post.find(params[:id])
        @posts.update(post_params)
        redirect_to user_path(current_user)
    end
    def destroy
        @posts=Post.find(params[:id])
        @posts.delete
        redirect_to user_path(current_user)        
    end

    private
    def post_params
        params.require(:post).permit(:publicacion,:tipo)
    end

 
end