class Question < ActiveRecord::Base

  belongs_to :user
  belongs_to :favorite
  has_many :answers
  has_many :categories

end
