class Api::ReplyReportsController < Api::BaseController
  before_filter :auth_user

  def create
    @report = ReplyReport.new
    @report.reply_id = params[:reply_id]
    @report.user_id = current_user.id
    @message = "댓글이 신고되었습니다."

    unless @report.save
      @code = CODE_FAIL
      render :json => { :code => @code, :message => @report.errors.full_messages.join(", ") }
    end
  end
end
