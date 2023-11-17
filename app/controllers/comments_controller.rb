class CommentsController < ApplicationController

  def create
    @support = Support.find(params[:support_id])
    @comment = @support.comments.create(comment_params)
    redirect_to support_path(@support)
  end

  private def comment_params
    params.require(:comment).permit(:username, :body)
  end
end
