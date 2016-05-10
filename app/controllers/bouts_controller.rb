class BoutsController < ApplicationController
  def index
    @fencer = Fencer.find(params[:fencer_id])
    @bouts = Bout.where(fencer: @fencer)
  end

  def show
  @bout = Bout.find(params[:id])
  @fencer = Fencer.find(@bout.fencer_id)
  end

  def new
    @qualifying_collection = Bout::QUALIFYING
    @bout = Bout.new
    @fencer = Fencer.find(params[:fencer_id])
  end

  def create
    @qualifying_collection = Bout::QUALIFYING
    @fencer = Fencer.find(params[:fencer_id])
    @bout = @fencer.bouts.new(bout_params)
    if @bout.save
    puts @bout.id
      flash[:notice] = "Bout successfully added!"
    redirect_to fencer_bout_path(@fencer.id, @bout.id)
  else
    flash[:error] = @bout.errors.full_messages.join", "
    render 'new'
    end
  end

  def edit
    @bout = bout.find(params[:id])
    @fencer = @bout.fencer
    if current_user && current_user == @bout.user
      @qualifying_collection = Bout::QUALIFYING
    elsif current_user
      flash[:error] = "You must be the bout creator to edit this information"
      redirect_to fencer_path(@fencer)
    else
      flash[:error] = "You must be signed in!"
      redirect_to fencer_path(@fencer)
    end
  end

  def update
    @bout = Bout.find(params[:id])
    @fencer = @bout.fencer
      @qualifying_collection = Bout::QUALIFYING
    if current_user && current_user == @bout.user
      @bout.update(bout_params)
      if @bout.save
        flash[:notice] = "bout updated!"
        redirect_to fencer_path(@fencer)
      else
        flash[:error] = @bout.errors.full_messages.join", "
        render 'edit'
      end
    elsif current_user
      flash[:error] = "You must be the bout creator to edit this information"
      redirect_to fencer_path(@fencer)
    else
      flash[:error] = "You must be signed in!"
      redirect_to fencer_path(@fencer)
    end
  end

  def destroy
    @bout = Bout.find(params[:id])
    @fencer = @bout.fencer
    if current_user && current_user == @bout.user
      if @bout.destroy!
        flash[:notification] = "bout removed!"
      else
        @fencer.errors.full_messages.join", "
      end
    elsif current_user
      flash[:error] = "You must be the bout creator to edit this information"
    else
      flash[:error] = "You must be signed in!"
    end
    redirect_to fencer_path(@fencer)
  end

  private

  def bout_params
    params.require(:bout).permit(
    :location,
    :fencer_id,
    :qualifying,
    :notes,
    )
  end
end
