class Api::RatingsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def update
    hash = {}
    hash[:user_id] = current_user.id
    hash[:manifesto_id] = params[:manifesto_id]

    @rating = Rating.find_or_create_by_user_id_and_manifesto_id(hash)
    @rating.grade = params[:grade]
    @rating.save
  end

  def destroy
    @rating = Rating.find_by_user_id_and_manifesto_id(current_user.id, params[:manifesto_id])
    logger.info { @rating }
    @rating && @rating.delete
  end
end
