class Post < ActiveRecord::Base
  belongs_to :parent, :class_name => 'Post', :foreign_key => "parent_id"
  belongs_to :user, :category
  has_many :votes
  has_many :posts
  attr_accessible :content
  validates :content, :presence => true
  validates :votes, :presence => true
  validates :user, :presence => true
  validates :catergory, :presence => true
end
