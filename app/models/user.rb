class User < ActiveRecord::Base
  # Unused Modules:
	  # :token_authenticatable, :confirmable
	  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me
  has_many :posts
end
