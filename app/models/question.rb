class Question < ActiveRecord::Base
  attr_accessible :content, :title
  
  belongs_to :user
  
  def author=(user)
    author = user
  end
  def author
    user
  end
  def display_author
    user.blank? ? "<Anonymous>" : user.email
  end
end
