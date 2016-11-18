class LunchesController < ApplicationController
  def new
    @lunch = Lunch.new
  end

  def create
    @lunch = Lunch.create(lunches_params)
    @lunch.User = current_user

    if @lunch.save
      flash[:success] = "Lunch saved!"
      redirect_to home_path
    else
      render :new
    end
  end

  private

  def lunches_params
    params.require(:lunch).permit(:title, :food, :max_guests, :date, :location)
  end
end