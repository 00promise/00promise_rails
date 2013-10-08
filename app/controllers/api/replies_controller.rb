class Api::RepliesController < Api::BaseController
  before_filter :auth_user, :except => [:manifesto]

  # GET /api/replies/manifesto/:id.json
  def manifesto
    count = params[:count] || 20
    max_id = params[:max_id] || FIXNUM_MAX

    @manifesto = Manifesto.find(params[:id])
    @replies = @manifesto.replies.where("id < ?", max_id).order("id DESC").limit(count)

    # 더보기가 아닌 경우에만 베플을 추가
    if max_id == FIXNUM_MAX
      beples = @manifesto.best_replies
      if beples.any?
        beples.each { |e| e.is_best = true }
        @replies = beples + @replies
      end
    end
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
end
