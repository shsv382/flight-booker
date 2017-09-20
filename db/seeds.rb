# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

1300.times do
	begin
		Flight.create(from_airport_id: 1 + rand(Airport.count),
						to_airport_id: 1 + rand(Airport.count),
						departing_date: Time.now + rand(8224).hours,
						time: 1 + rand(12),
						passengers_count: 100)
	rescue
		next
	end
end