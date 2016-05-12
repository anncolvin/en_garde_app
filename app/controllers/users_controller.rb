class UsersController < ApplicationController
  def index
    if current_user
      redirect_to fencers_path
    end
  end
end
