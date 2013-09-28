class Api::ElectionsController < Api::BaseController
  def index
    @elections = Election.where("enabled = ?", true).order("ord")
  end
end
