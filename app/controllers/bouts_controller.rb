class BoutsController < ApplicationController
  def create
    @fencer = fencer.find(params[:fencer_id])
    @bouts = @fencer.bouts
    @bout = bout.new(bout_params)
    if current_user && @bout.save
      flash[:notice] = "bout successfully added!"
    elsif current_user
      flash[:error] = @bout.errors.full_messages.join", "
      @qualifying_collection = Bout::QUALIFYING
    else
        @qualifying_collection = Bout::QUALIFYING
      flash[:error] = "You must be signed in to add bouts!"
    end
    redirect_to fencer_path(@fencer)
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
    :qualifying,
    :notes,
    ).merge(fencer: @fencer, user: current_user)
  end
end
