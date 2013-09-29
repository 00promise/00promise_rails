class Api::ManifestosController < Api::BaseController
  def show
    @manifesto = Manifesto.find(params[:id])
    @manifesto.init_rating_status(current_user)
  end

  def daily
    @manifestos = Manifesto.order("reply_cnt DESC").limit(5)
  end

  def politician
    @politician = Politician.find(params[:id])
    @manifestos = @politician.manifestos
  end
end
