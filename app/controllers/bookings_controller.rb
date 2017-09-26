class BookingsController < ApplicationController
  def new
#  	@booking = Booking.new()
#  	@flight_id = params[:flight_id]
#  	@count = params[:passengers_count]
  end

  def create
#  	@booking = Booking.new(flight_id: @flight_id)
#  	@count.times do |n|
#  		@passenger = Passenger.create(name: passenger_params[n])
#  		@booking << @passenger
#  	end
#  	if @booking.save
#  		flash[:success] = "Заказ успешно оформлен!"
#  		redirect_to @booking
#  	else
#  		render :new
#  	end
  end

  def show
#  	@booking = Booking.find(params[:id])
  end

  private
  def passenger_params
  	params.require(:passenger).permit(:names)
  end

  def booking_params
  	params.require(:booking).permit(:booked)
  end

end
