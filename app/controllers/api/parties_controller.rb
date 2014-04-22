class Api::PartiesController < Api::BaseController
  # GET parties.json
  def index
    @parties = Party.where("visible = ?", true).order("ord")
  end

  # GET parties/:id/politicians.json
  def politicians
    count = params[:count] || 20
    page = params[:page] || 1

    party = Party.find(params[:id])
    @politicians = party.politicians.order("name").page(page).per(count)
  end
end
