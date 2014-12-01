class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.text :description
    	t.string :photo
    	t.boolean :privacy
      t.timestamps
      t.string :email
      t.string :password
    end
  end
end
