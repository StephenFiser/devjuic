class Post < ActiveRecord::Base
  attr_accessible :content, :title, :description
  belongs_to :user
  validates :description, presence: true, length: { maximum: 90 }
  validates :content, presence: true
  validates :title, presence: true

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
