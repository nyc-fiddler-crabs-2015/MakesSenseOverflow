class User < ActiveRecord::Base
  has_secure_password
  validates_uniqueness_of :name


  has_many :questions
  has_many :answers
  has_many :favorites

end
