class GuestsController < ApplicationController
  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.create
    # @guest.Lunch.Id = lunch_id
	@guest.User = current_user
	@guest.Lunch = Lunch.find(params[:lunch_id])

    if @guest.save
      flash[:success] = "Guest added!"
      redirect_to home_path
    else
      render :new
    end
  end

end