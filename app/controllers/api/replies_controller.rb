class Api::RepliesController < Api::BaseController
  before_filter :auth_user, :except => [:manifesto]

  def manifesto
    count = params[:count] || 20
    count = 50 if count > 50
    max_id = params[:max_id] || FIXNUM_MAX

    @manifesto = Manifesto.find(params[:id])
    @replies = @manifesto.replies.where("id < ?", max_id).order("id DESC").limit(count)
  end

  def create
    #TODO POST 데이터를 검증하기 위해 Reply 모델에 validation 추가
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
