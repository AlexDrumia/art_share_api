class CommentsController < ApplicationController
  def index
    if params[:user_id].present?
      user = User.find(params[:user_id])
      user_comments = user.comments
      render json: user_comments
    else
      artwork = Artwork.find(params[:artwork_id])
      artwork_comments = artwork.comments
      render json: artwork_comments
    end
  end

  def create
    comment = Comment.new(comment_params)

    if comment.save
      render json: comment
    else
      render json: comment.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    render json: comment
  end

  def like
    like = Like.new(user_id: params[:user_id], likeable_id: params[:id], likeable_type: 'Comment')
    if like.save
      render json: like
    else
      render json: like.errors.full_messages, status: :unprocessable_entity
    end
  end

  def unlike
    like = Like.find_by(user_id: params[:user_id], likeable_id: params[:id], likeable_type: 'Comment')
    if like.destroy
      render json: like
    else
      render json: like.errors.full_messages, status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :artwork_id, :body)
  end
end
