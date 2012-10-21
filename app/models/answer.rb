class Answer < ActiveRecord::Base

  attr_accessible :content, :name

  belongs_to :user
  belongs_to :question
  has_many :comments

end
