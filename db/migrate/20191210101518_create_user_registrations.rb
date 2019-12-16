class CreateUserRegistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_registrations do |t|
    	t.string :user_name 
    	t.string :state
      	t.string :District
      	t.string :taluka
      	t.string :village
      	t.string :address
    	t.timestamps
    end
  end
end
