class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :description
    	t.string :color
    	t.string :photo
    	t.string :privacy
      t.timestamps
    end
  end
end
