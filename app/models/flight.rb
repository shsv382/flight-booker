class Flight < ApplicationRecord
	validates :from_airport_id,  presence: true, 
				numericality: {only_integer: true}
	validates :to_airport_id,    presence: true, 
				numericality: {only_integer: true}
	validates :departing_date,   presence: true
	validates :time,  			 presence: true, 
				numericality: {greater_than_or_equal_to: 1}
	validates :passengers_count, presence: true
	validate  :cannot_be_the_same

	belongs_to :from_airport, class_name: "Airport"
	belongs_to :to_airport,   class_name: "Airport"

	
	def cannot_be_the_same
		errors.add(:to_airport_id, "Аэропорты вылета и прибытия не могут совпадать!") if from_airport_id == to_airport_id
	end

end