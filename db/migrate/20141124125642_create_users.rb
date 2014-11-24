class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.text :description
    	t.string :color
    	t.string :photo
    	t.boolean :privacy
      t.timestamps
    end
  end
end
