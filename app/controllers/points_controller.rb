class PointsController < ApplicationController
  def index
    @points = Point.all
  end

  def show
    @bout = Bout.find(params[:id])
    @points = @bout.points.order(:count)
  end

  def new
    if current_user
      @bout = Bout.find(params[:bout_id])
      @point = Point.new

      @statuses_collection = Point::STATUSES
      @reasoncategories_collection = Point::REASONCATEGORIES
      @reasons_collection = []
    else
      flash[:error] = "You must be signed in to add Points!"
      redirect_to new_point_path
    end
  end

  def create
    if current_user
      binding.pry
      @bout = Bout.find(params[:bout_id])
      @point = Point.new(point_params)
      if @point.save
        flash[:notice] = "Point successfully added!"


        @twitter_client ||= TwitterClient.new
        @twitter_client.post_tweet(message)
        redirect_to point_path(@point)
      else
        flash[:error] = @point.errors.full_messages.join", "
        render :new
      end
    else
      flash[:error] = "You must be signed in to add a Point!"
      redirect_to point_path(@point)
    end
  end

  def edit
    @point = point.find(params[:id])
    if current_user && current_user == @point.user
    elsif current_user
      flash[:error] =
        "You must be the point creator to edit this information"
      redirect_to point_path(@point)
    else
      flash[:error] = "You must be signed in!"
      redirect_to point_path(@point)
    end
  end

  def update
    @point = point.find(params[:id])
    if current_user && current_user == @point.user
      @point.update(point_params)
      if @point.save
        flash[:notice] = "point updated!"
        redirect_to point_path(@point)
      else
        flash[:error] = @point.errors.full_messages.join", "
        render 'edit'
      end
    elsif current_user
      flash[:error] =
        "You must be the point creator to edit this information"
      render 'show'
    else
      flash[:error] = "You must be signed in!"
      redirect_to point_path(@point)
    end
  end

  def destroy
    @point = point.find(params[:id])
    if current_user && current_user == @point.user
      if @point.destroy!
        flash[:notification] = "point removed!"
        redirect_to points_path
      else
        @point.errors.full_messages.join", "
        redirect_to point_path(@point)
      end
    elsif current_user
      flash[:error] =
        "You must be the point creator to edit this information"
      redirect_to points_path(@point)
    else
      flash[:error] = "You must be signed in!"
      redirect_to point_path(@point)
    end
  end

  private

  def point_params
    params.require(:point).permit(
    :status,
    :reason_category,
    :reason,
    ).merge(user: current_user)
  end
end
