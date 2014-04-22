class Api::ElectionsController < Api::BaseController
  # GET elections.json
  def index
    @elections = Election.where("enabled = ?", true).order("ord")
  end

  # GET elections/:id/politicians.json
  def politicians
    count = params[:count] || 20
    page = params[:page] || 1

    election = Election.find(params[:id])
    @politicians = election.politicians.order("name").page(page).per(count)
  end
end
