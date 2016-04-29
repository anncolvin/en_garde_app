class FencersController < ApplicationController
  def index
    @fencers = Fencer.all
  end

  def show
    @fencer = Fencer.find(params[:id])
    @bouts = @fencer.bouts.order(:count)
  end

  def new
    if current_user
      @categories_collection = Fencer::CATEGORIES
      @fencer = Fencer.new
    else
      flash[:error] = "You must be signed in to add Fencers!"
      redirect_to new_user_registration_path
    end
  end

  def create
    if current_user
      @fencer = Fencer.new(fencer_params)
      if @fencer.save
        flash[:notice] = "Fencer successfully added!"
        redirect_to fencer_path(@fencer)
      else
        flash[:error] = @fencer.errors.full_messages.join", "
        render 'new'
      end
    end
  end

  def edit
    @fencer = Fencer.find(params[:id])
    @categories_collection = Fencer::CATEGORIES
  end

  def update
    @fencer = Fencer.find(params[:id])
    if current_user && current_user == @fencer.user
      @fencer.update(fencer_params)
      if @fencer.save
        flash[:notice] = "Fencer updated!"
        redirect_to fencer_path(@fencer)
      else
        flash[:error] = @fencer.errors.full_messages.join", "
        render 'edit'
      end
    elsif current_user
      flash[:error] =
        "You must be the fencer creator to edit this information"
      render 'show'
    else
      flash[:error] = "You must be signed in!"
      redirect_to fencer_path(@fencer)
    end
  end

  def destroy
    @fencer = Fencer.find(params[:id])
    if current_user && current_user == @fencer.user
      if @fencer.destroy!
        flash[:notification] = "Fencer removed!"
        redirect_to fencers_path
      else
        @fencer.errors.full_messages.join", "
        redirect_to fencer_path(@fencer)
      end
    elsif current_user
      flash[:error] =
        "You must be the fencer creator to edit this information"
      redirect_to fencers_path(@fencer)
    else
      flash[:error] = "You must be signed in!"
      redirect_to fencer_path(@fencer)
    end
  end

  private

  def fencer_params
    params.require(:fencer).permit(
    :name,
    :user_id,
    :profile_photo,
    :dominant_hand,
    :category,
    :letter_rating,
    :notes
    ).merge(user: current_user)
  end
end
