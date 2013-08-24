class Post < ActiveRecord::Base
  attr_accessible :title, :body, :author_id, :category_id
  belongs_to :category
end
