class Customer < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :status
end
