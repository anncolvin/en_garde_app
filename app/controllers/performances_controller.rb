class PerformancesController < ApplicationController

  def index
    @fencer = Fencer.find(params[:id])
    @bouts = Bout.where(fencer: @fencer)
  end
end
