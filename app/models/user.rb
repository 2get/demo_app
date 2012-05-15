class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :microposts

  validates_presence_of :email, :name
  validates_length_of :email, :maximum => 30
  validates_length_of :name, :maximum => 30
end
