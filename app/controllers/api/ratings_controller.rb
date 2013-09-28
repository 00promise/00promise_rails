class Api::RatingsController < Api::BaseController
  before_filter :auth_user

  def update
    hash = {}
    hash[:user_id] = current_user.id
    hash[:manifesto_id] = params[:manifesto_id]

    @rating = Rating.where(hash).first_or_initialize
    @rating.grade = params[:grade]
    @rating.save
  end

  def destroy
    @rating = Rating.find_by_user_id_and_manifesto_id(current_user.id, params[:manifesto_id])
    if @rating
      @rating.destroy
      @message = "평가가 삭제되었습니다."
    else
      @code = CODE_FAIL
      @message = "이미 처리되었습니다."
      render :json => { :code => @code, :message => @message }
    end
  end
end
