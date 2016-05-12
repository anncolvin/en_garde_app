class PerformancesController < ApplicationController
  def index
    @fencer = Fencer.find(params[:fencer_id])
    @points = Point.all
    respond_to do |format|
      format.html
      format.json do
        reasons = @points.map{ |point| point.reason }
      end
    end
  end
end
