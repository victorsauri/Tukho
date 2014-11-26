class CreateConnectors < ActiveRecord::Migration
  def change
    create_table :connectors do |t|
    	t.string :color
    	t.integer :user_id
    	t.integer :event_id
      t.timestamps
    end
  end
end
