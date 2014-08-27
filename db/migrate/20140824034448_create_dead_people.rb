class CreateDeadPeople < ActiveRecord::Migration
  def change
    create_table :dead_people do |t|
      t.string :last_name
      t.string :first_name
      t.date :dob
      t.date :dod
      t.string :city_state

      t.timestamps
    end
  end
end
