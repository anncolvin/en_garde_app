class UsersController < ApplicationController

  def index
    puts "Peanut Butter"
    if current_user
      redirect_to fencers_path
    end
  end
end
