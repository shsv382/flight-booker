class FlightsController < ApplicationController
	def index
		if params[:date]
			@flights = Flight.where(departing_date: 
				Date.parse(params[:date])..(Date.parse(params[:date]) +
				 1.day)).order(:departing_date)
		else
			@flights = Flight.departings
		end
	end

	def new
	end

	def create
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
		def date_params
			params.require(:date).permit(:year, :month, :day)
		end

		def dates
			Flight.departings.map { |f| f.departing_date = "#{f.departing_date.day}.
															#{f.departing_date.month}.
															#{f.departing_date.year}" }
		end
end
