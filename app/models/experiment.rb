class Experiment < ActiveRecord::Base
  attr_accessible :description, :index_link, :title
  belongs_to :user

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
