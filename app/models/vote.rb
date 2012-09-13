class Vote < ActiveRecord::Base
  belongs_to :user, :post
  validates :user, :presence => true
  validates :post, :presence => true
end
