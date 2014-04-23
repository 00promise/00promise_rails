class Api::ManifestosController < Api::BaseController
  # GET /api/manifestos/:id.json
  def show
    @manifesto = Manifesto.find(params[:id])
    @manifesto.init_rating_status(current_user)
  end

  # OPTIMIZE : 1분 단위로 캐싱 하는것도 좋을것 같다!
  # James 2014-04-22
  # inlcudes 쿼리캐싱 - 평균 600ms 쿼리를 80 쿼리로 단축 
  # GET /api/manifestos/daily.json
  def daily
    @manifestos = Manifesto.includes(replies: [:user]).includes(winner: [politician: [:position, :party] ]).order("replies_count DESC").order('replies.agree_cnt DESC').limit(10)
  end

  # GET /api/manifestos/politician/:id.json
  def politician
    @politician = Politician.find(params[:id])
    @manifestos = @politician.manifestos
  end
end
