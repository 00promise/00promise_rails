class Api::ManifestosController < ApplicationController
  def daily
    @manifestos = Manifesto.order("reply_cnt DESC").limit(5)
  end
end
