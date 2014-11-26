class CommentsController < ApplicationController

  def show
    # Typos :(
    @comment = Comment.find(params[:id])
  end

  def new
    # There shouldn't be any need for params at this point.
    @comment = Comment.new(params[:comment])
  end

  def create
    @comment = Comment.new(comment_params)
    # Why aren't you permitting review_id & commenter_id, which would
    # eradicate the need for the following two lines?
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


