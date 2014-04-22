class Api::DistrictController < Api::BaseController
  def sidos
    @sidos = Sido.order("ord")
  end

  def sigungus
    @sigungus = Sigungu.find_all_by_sido_id(params[:id])
  end

  def search
    @sigungus = Sigungu.where("full_name LIKE :q", q: "%#{params[:q]}%")
  end
end
