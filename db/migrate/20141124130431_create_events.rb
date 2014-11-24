class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :name
    	t.string :description
    	t.datetime :date
    	t.string :photo
    	t.string :location
    	t.datetime :starting_time
    	t.datetime :finishing_time
    	t.integer :num_people
      t.timestamps
    end
  end
end
