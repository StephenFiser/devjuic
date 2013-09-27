class User < ActiveRecord::Base
  # Unused Modules:
	  # :token_authenticatable, :confirmable, :registerable,
	  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me
  has_many :posts
  has_many :experiments
end
