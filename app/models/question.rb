class Question < ActiveRecord::Base
  attr_accessible :content, :title
  
  belongs_to :user
  

  def display_author
    user.blank? ? "<Anonymous>" : user.email
  end
end
