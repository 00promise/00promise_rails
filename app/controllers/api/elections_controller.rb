class Api::ElectionsController < Api::BaseController
  def index
    @elections = Election.where("enabled = ?", true).order("ord")
  end

  def politicians
    election = Election.find(params[:id])
    @politicians = election.politicians.order("name")
  end
end
