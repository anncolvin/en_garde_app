class PointsController < ApplicationController
  def index
    @points = Point.all
  end

  def show
    @bout = Bout.find(params[:bout_id])
    @points = @bout.points.order(:count)
  end

  def new
    @point = Point.new
    @bout = Bout.find(params[:bout_id])
    @statuses_collection = Point::STATUSES
    @reasoncategories_collection = Point::REASONCATEGORIES
    @reasons_collection = Point::REASONS
  end


  def create
    @bout = Bout.find(params[:bout_id])
    @point = @bout.points.new(point_params)
    @statuses_collection = Point::STATUSES
    @reasoncategories_collection = Point::REASONCATEGORIES
    @reasons_collection = Point::REASONS
      if @point.save
        puts @point.id
        flash[:notice] = "Point successfully added!"
      redirect_to bout_path(params[:bout_id])
      else
        flash[:error] = @point.errors.full_messages.join", "
        render :new
      end
  end

  def edit
    @point = point.find(params[:id])
  end

  def update
    @point = point.find(params[:id])
    @point.update(point_params)
      if @point.save
        flash[:notice] = "point updated!"
        redirect_to point_path(@point)
      else
        flash[:error] = @point.errors.full_messages.join", "
        render 'edit'
      end
  end

  def destroy
    @point = point.find(params[:id])
      if @point.destroy!
        flash[:notification] = "point removed!"
        redirect_to points_path
      else
        @point.errors.full_messages.join", "
        redirect_to point_path(@point)
      end
  end

  private

  def point_params
    params.require(:point).permit(
    :status,
    :reason_category,
    :reason,
    )
  end
end
