# class used as controller that gives information
#   about user
class ProfileController < ApplicationController
  def show
    @profile = User.find(params[:id])
  end
end
