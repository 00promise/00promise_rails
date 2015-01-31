class Api::RepliesController < Api::BaseController
  before_filter :auth_user, :except => [:manifesto, :index, :versus, :issue]

  # GET /api/replies/manifesto/:id.json
  def manifesto
    count = params[:count] || 20
    max_id = params[:max_id] || FIXNUM_MAX
    order_col = "id"
    if params[:order] == "1"
      order_col = "replies_count"
    end

    @manifesto = Manifesto.find(params[:id])
    @replies = @manifesto.replies.where("id < ?", max_id).order("#{order_col} DESC").limit(count)

    # 더보기가 아닌 경우에만 베플을 추가
    if max_id == FIXNUM_MAX
      beples = @manifesto.best_replies
      if beples.any?
        beples.each { |e| e.is_best = true }
        @replies = beples + @replies
      end
    end
    render "replies"
  end

  def politician
    count = params[:count] || 10
    max_id = params[:max_id] || FIXNUM_MAX
    order_col = "id"
    if params[:order] == "1"
      order_col = "replies_count"
    end

    @politician = Politician.find(params[:id])
    @replies = @politician.replies.where("id < ?", max_id).order("#{order_col} DESC").limit(count)

    render "replies"
  end

  def index
    count = params[:count] || 20
    page = params[:page] || 1
    id =  params[:id]
    order_col = "id"
    if params[:order] == "1"
      order_col = "replies_count"
    end
    if params[:type] == "manifesto2"
      reply_parent = Manifesto.find(params[:id])
    elsif params[:type] == "versus"
      reply_parent = Versus.find(params[:id])
    elsif params[:type] == "issue"
      reply_parent = Issue.find(params[:id])
    end
    @replies = reply_parent.replies.where("reply_score > 10").order(:reply_score).limit(2)
    @replies.each { |e| e.is_best = true }
    if @replies.collect(&:id).empty?
      @replies = reply_parent.replies.order("#{order_col} DESC").page(page).per(count)
    else
      @replies = @replies + reply_parent.replies.where('id not in (?)',@replies.collect(&:id)).order("#{order_col} DESC").page(page).per(count)
    end
  end

  def create
    #TODO POST 데이터를 검증하기 위해 Reply 모델에 validation 추가
    #Polymorphic 스타일로 변경
    if params[:manifesto_id]
      reply_parent = Manifesto.find(params[:manifesto_id])
    elsif params[:versus_id]
      reply_parent = Versus.find(params[:versus_id])
    elsif params[:issue_id]
      reply_parent = Issue.find(params[:issue_id])
    elsif params[:politician_id]
      reply_parent = Politician.find(params[:politician_id])
    elsif params[:reply_id]
      reply_parent = Reply.find(params[:reply_id])
    end
    @reply = reply_parent.replies.new
    @reply.user_id = current_user.id
    @reply.content = params[:content]
    @reply.is_owner = true
    @reply.save
    @message = "댓글이 작성되었습니다."

    #@reply = Reply.new
    #@reply.manifesto_id = params[:manifesto_id]
    #@reply.user_id = current_user.id
    #@reply.content = params[:content]
    #@reply.is_owner = true
    #@reply.save
    #@message = "댓글이 작성되었습니다."
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
