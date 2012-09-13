class User < ActiveRecord::Base
  has_many :votes
  has_many :posts
  belongs_to :role
  attr_accessible :password, :username
  validates :username, :presence => true
  validates :password, :presence => true
  validates :role, :presence => true
end
