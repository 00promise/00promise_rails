class Api::PoliticiansController < Api::BaseController
  def show
    @politician = Politician.find(params[:id])
  end

  def search
    @politicians = Politician.where("name LIKE :q", q: "#{params[:q]}%")
  end

  # GET politicians/my_district/:id.json
  def my_district
    sigungu = Sigungu.find(params[:id])
    positions = sigungu.positions.includes(:politician)
    @politicians = positions.map { |p| p.politician }
  end
end
