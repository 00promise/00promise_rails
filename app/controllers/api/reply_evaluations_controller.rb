class Api::ReplyEvaluationsController < Api::BaseController
  before_filter :auth_user

  def create
    @eval = ReplyEvaluation.new
    @eval.reply_id = params[:reply_id]
    @eval.user_id = current_user.id
    @eval.eval_type = params[:eval_type]
    logger.info { @eval.to_yaml }

    unless @eval.save
      render :json => { :success => false, :message => @eval.errors.full_messages.join(", ") }
    end
  end
end
