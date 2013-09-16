class Api::PartiesController < ApplicationController
  def index
    @parties = Party.all
  end

  def politicians
    @party = Party.find(params[:id])
    @politicians = @party.politicians
  end
end
