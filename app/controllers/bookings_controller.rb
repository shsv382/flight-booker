class BookingsController < ApplicationController
  def new
  	@booking = Booking.new
  	@flight = params[:flight_id] ? Flight.find(params[:flight_id]) : Flight.find(cookies[:flight_id].to_i)
  	@count = params[:passengers_count] ? params[:passengers_count] : cookies[:passengers_count].to_i
  	cookies[:flight_id] = { value: params[:flight_id], 
  							expires: Time.now + 1.hour} if params[:flight_id]
  	cookies[:passengers_count] = {  value: params[:passengers_count], 
  									expires: Time.now + 1.hour} if params[:passengers_count]
  end

  def create
  	@booking = Booking.new(booking_params)
#  	@count.times do |n|
  		@passenger = Passenger.create(name: params[:booking][:passenger][:name])
  		@booking.passengers << @passenger
#  	end
  	if @booking.save
  		flash[:success] = "Заказ успешно оформлен!"
  		redirect_to @booking
  	else
  		flash.now[:error] = "Введите корректные данные!"
  		render :new
  	end
  end

  def show
  	@booking = Booking.find(params[:id])
  end

  private
  def passenger_params
  	params.require(:booking).permit(:passenger)
  end

  def booking_params
  	params.require(:booking).permit(:flight_id)
  end

end
