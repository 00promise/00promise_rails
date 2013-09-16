class Api::RatingsController < ApplicationController
  skip_before_filter :verify_authenticity_token

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
    @rating && @rating.destroy
  end
end
