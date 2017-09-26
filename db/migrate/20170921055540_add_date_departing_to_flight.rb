class AddDateDepartingToFlight < ActiveRecord::Migration[5.0]
  def change
  	change_table :flights do |t|
  		t.rename :departing_date, :departing_time
  		t.datetime :departing_date
  		t.index :departing_date
  	end
  end
end
