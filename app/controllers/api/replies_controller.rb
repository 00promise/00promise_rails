class Api::RepliesController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def manifesto
    @manifesto = Manifesto.find(params[:id])
    @replies = @manifesto.replies.order("id DESC").limit(20)
  end

  def create
    @reply = Reply.new
    @reply.manifesto_id = params[:manifesto_id]
    @reply.user_id = current_user.id
    @reply.content = params[:content]
    @reply.save
  end

  def destroy
    @reply = Reply.find_by_id_and_user_id(params[:id], current_user.id)
    @reply && @reply.destroy
  end

  def report
    #TODO 댓글 신고에 대한 기획이 나온 후에 구현
  end
end
