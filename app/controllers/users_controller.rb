class UsersController < ApplicationController

  def index
    puts "Hello, logs!"
    if current_user
      redirect_to fencers_path
    end
  end
end
