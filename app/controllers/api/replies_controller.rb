class Api::RepliesController < Api::BaseController
  before_filter :auth_user, :except => [:manifesto]

  # GET /api/replies/manifesto/:id.json
  def manifesto
    count = params[:count] || 20
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
    @message = "댓글이 작성되었습니다."
  end

  def destroy
    @reply = Reply.find_by_id_and_user_id(params[:id], current_user.id)
    if @reply
      @reply.destroy
      @message = "댓글이 삭제되었습니다."
    else
      @code = CODE_FAIL
      @message = "이미 처리되었습니다."
      render :json => { :code => @code, :message => @message }
    end
  end

  def report
    #TODO 댓글 신고에 대한 기획이 나온 후에 구현
  end
end
