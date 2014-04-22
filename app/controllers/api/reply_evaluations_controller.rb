class Api::ReplyEvaluationsController < Api::BaseController
  before_filter :auth_user

  # POST reply_evaluations/create.json
  def create
    @eval = ReplyEvaluation.new
    @eval.reply_id = params[:reply_id]
    @eval.user_id = current_user.id
    @eval.eval_type = params[:eval_type]

    unless @eval.save
      @code = CODE_FAIL
      render :json => { :code => @code, :message => @eval.errors.full_messages.join(", ") }
    end
  end

  # POST reply_evaluations/update.json
  def update
    hash = {}
    hash[:reply_id] = params[:reply_id]
    hash[:user_id] = current_user.id

    @eval = ReplyEvaluation.where(hash).first_or_initialize
    @eval.eval_type = params[:eval_type]
    unless @eval.save
      @code = CODE_FAIL
      render :json => { :code => @code, :message => @eval.errors.full_messages.join(", ") }
    end
  end

  # POST reply_evaluations/destroy.json
  def destroy
    @eval = ReplyEvaluation.find_by_user_id_and_reply_id(current_user.id, params[:reply_id])
    if @eval
      @eval.destroy
      @message = "평가가 삭제되었습니다."
    else
      @code = CODE_FAIL
      @message = "이미 처리되었습니다."
      render :json => { :code => @code, :message => @message }
    end
  end
end
