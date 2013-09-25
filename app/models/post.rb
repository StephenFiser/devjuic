class Post < ActiveRecord::Base
  attr_accessible :content, :title, :description
  belongs_to :user
  has_many :comments
  validates :description, presence: true, length: { maximum: 90 }
  validates :content, presence: true
  validates :title, presence: true

  def self.order_by_most_recent
    order("created_at DESC").all
  end

  def author
  	user
  end

  def author_name
  	author.first_name + ' ' + author.last_name
  end

  def day_created
  	created_at.strftime("%B %d, %Y")
  end
end
