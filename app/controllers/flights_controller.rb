class FlightsController < ApplicationController
	def index
		if params[:date]
			@flights = Flight.where(departing_date: Date.new(params[:date][:year].to_i,
						 params[:date][:month].to_i, 
						 params[:date][:day].to_i)..(Date.new(params[:date][:year].to_i, 
						 params[:date][:month].to_i, 
						 params[:date][:day].to_i) + 1.day)).order(departing_date: :desc)
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
end
