class Api::ManifestosController < Api::BaseController
  # GET /api/manifestos/:id.json
  def show
    @manifesto = Manifesto.find(params[:id])
    @manifesto.init_rating_status(current_user)
  end

  # GET /api/manifestos/daily.json
  def daily
    @manifestos = Manifesto.order("reply_cnt DESC").limit(10)
  end

  # GET /api/manifestos/politician/:id.json
  def politician
    @politician = Politician.find(params[:id])
    @manifestos = @politician.manifestos
  end
end
