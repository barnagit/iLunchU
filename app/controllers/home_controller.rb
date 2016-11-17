class HomeController < ApplicationController
  def index
	
	#@cook1 = User.find(1)
	#@lunch1 = Lunch.create(:title => 'lunch1', :food => 'McBurger', :max_guests=>2, :date=>Time.now.to_datetime, :location=>'Bp, Eiffel tér 5', :User=>@cook1)
    #@lunch1.save
	
	#@guest_user1 = User.find(3)
	#@guest_user2 = User.find(4)
	
	#@lunch1 = Lunch.find(1)
	
	#@guest1 = Guest.create(:User=>@guest_user1, :Lunch=>@lunch1)
	#@guest1.save
	#@guest2 = Guest.create(:User=>@guest_user2, :Lunch=>@lunch1)
	#@guest2.save
	
	@lunches = Lunch.all
  end
end
