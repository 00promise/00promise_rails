class PoliticiansController < ApplicationController
  # GET politicians/:id.json
  def show
    @politician = Politician.find(params[:id])
    render :layout => false
  end
end
