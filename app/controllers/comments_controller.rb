class CommentsController < ApplicationController

  def show
    @comment = Commnet.find(params[:id])

  end

  def new
    @comment = Comment.new(params[:comment])
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.review = Review.find(params[:comment][:review_id])
    @comment.commenter = User.find(params[:comment][:commenter_id])
    @comment.save
    @user = @comment.review.artist
    redirect_to("/users/#{@user.id}")
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end

end


