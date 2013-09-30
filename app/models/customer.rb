class Customer < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :status

  def self.order_by_last_name
    order("last_name ASC").all
  end
end
