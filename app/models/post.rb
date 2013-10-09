class Post < ActiveRecord::Base
  attr_accessible :title, :body, :admin_user_id, :category_id
  belongs_to :category
  belongs_to :admin_user
  has_many :post_comments, :dependent => :destroy

  def content
  	markdownService.new.render(body)
  end
  
end
