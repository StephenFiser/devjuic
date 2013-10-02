class Event < ActiveRecord::Base
  attr_accessible :date_and_time, :description, :title
  has_one :location
end
