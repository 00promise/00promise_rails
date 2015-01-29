class Api::PoliticiansController < Api::BaseController
  # GET politicians/:id.json
  def show
    @politician = Politician.find(params[:id])
    @politician = @politician.decorate
  end

  # GET politicians/search.json
  def search
    @politicians = Politician.where("name LIKE :q", q: "%#{params[:q]}%")
    @politicians = PoliticianDecorator.decorate_collection(@politicians)
  end

  # GET politicians/my_district/:id.json
  def my_district
    sigungu = Sigungu.find(params[:id])
    positions = sigungu.positions.includes(:politician)
    @politicians = positions.map { |p| p.politician }
    @politicians = PoliticianDecorator.decorate_collection(@politicians)
  end

  # GET politicians/my_location.json
  def my_location
    unless params[:q]
      @code = CODE_FAIL
      @message = "검색어가 없습니다."
      render_error
      return
    end

    sigungu = Sigungu.where("full_name LIKE :q", q: "#{params[:q]}%").first

    if sigungu
      positions = sigungu.positions.includes(:politician)
      @politicians = positions.map { |p| p.politician }
      @politicians = PoliticianDecorator.decorate_collection(@politicians)
    else
      @code = CODE_FAIL
      @message = "일치하는 데이터가 없습니다."
      render_error
    end
  end
end
