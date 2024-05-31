class PostsController < ApplicationController

  def index
    @posts = Post.order("id desc")
  end

  def create
    @post = Post.new
    @post["body"] = params["body"]
    @post["user_id"] = session["user_id"]
    @post.save
    redirect_to "/posts"
  end

end
