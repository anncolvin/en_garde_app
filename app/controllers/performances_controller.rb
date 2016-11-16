class PerformancesController < ApplicationController
  include PerformancesHelper
  def index
    @fencer = Fencer.find(params[:fencer_id])
    @bouts = Bout.where(fencer_id: params[:fencer_id])
    bout_ids = @bouts.map { |bout| bout.id }
    @points = Point.where(bout_id: bout_ids)
    respond_to do |format|
      format.html
      format.json do
        # reasons = @points.map{ |point| point.reason }
        # reasons_count =
        # puts do_counts(@points)
        render json: do_counts(@points)
      end
    end
  end
end
