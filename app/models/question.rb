class Question < ActiveRecord::Base
  attr_accessible :content, :title, :tag_list
  
  belongs_to :user
  has_many :answers
  has_many :comments, :through => :answers

  def display_author
    user.blank? ? "<Anonymous>" : user.email
  end
end
