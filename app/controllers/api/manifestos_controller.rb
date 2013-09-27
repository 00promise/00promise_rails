class Api::ManifestosController < ApplicationController
  def show
    @manifesto = Manifesto.find(params[:id])
  end

  def daily
    @code = "0000"
    @manifestos = Manifesto.order("reply_cnt DESC").limit(5)
  end

  def politician
    @politician = Politician.find(params[:id])
    @manifestos = @politician.manifestos
  end
end
