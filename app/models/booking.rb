class Booking < ApplicationRecord
	belongs_to :flight
	has_many :passengers
	validates :flight_id, presence: true
	validate :pass_count
	accepts_nested_attributes_for :passengers, reject_if: 
						lambda { |attributes| attributes['name'].blank? }

	def pass_count
		if passenger_ids.count < 1
			errors.add(:passengers, "А кто полетит?")
		end 
	end
end
