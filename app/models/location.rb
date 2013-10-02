class Location < ActiveRecord::Base
  attr_accessible :city, :event_id, :state, :street_address, :zip
  belongs_to :event
end
