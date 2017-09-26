class ChangeDepDateColumn < ActiveRecord::Migration[5.0]
  def change
  	change_column :flights, :departing_date, :date
  end
end
