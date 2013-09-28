class Api::PoliticiansController < Api::BaseController
  def show
    @politician = Politician.find(params[:id])
  end

  def search
    @politicians = Politician.where("name LIKE :q", q: "#{params[:q]}%")
  end
end
