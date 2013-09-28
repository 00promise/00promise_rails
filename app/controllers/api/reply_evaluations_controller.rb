class Api::ReplyEvaluationsController < Api::BaseController
  before_filter :auth_user

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
end
