class Connector < ActiveRecord::Base
	belongs_to :event
  belongs_to :user
  validates :user_id, uniqueness: {scope: :event_id}
end
