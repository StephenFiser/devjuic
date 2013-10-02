class Event < ActiveRecord::Base
  attr_accessible :date_and_time, :description, :title, :guest_list
  validates_presence_of :date_and_time, :description, :title
  has_one :location
  belongs_to :guest
  serialize :guest_list
  after_initialize :set_default_guest_list

  def set_default_guest_list
  	self.guest_list = []
  end
end
