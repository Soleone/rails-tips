class User < ActiveRecord::Base
  has_many :tips
  
  validates_uniqueness_of :name
  validates_length_of :name, :within => 3..32
end
