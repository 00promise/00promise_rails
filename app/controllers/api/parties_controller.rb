class Api::PartiesController < Api::BaseController
  def index
    @parties = Party.where("visible = ?", true).order("ord")
  end

  def politicians
    @party = Party.find(params[:id])
    @politicians = @party.politicians
  end
end
