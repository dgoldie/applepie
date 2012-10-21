class Question < ActiveRecord::Base
  attr_accessible :content, :title, :tag_list
  
  belongs_to :user
  has_many :answers
  has_many :comments, :through => :answers

  # PSB: Below needed for tagging
  acts_as_taggable

  # PSB: Below needed for voting system
  has_reputation :votes, source: :user, aggregated_by: :sum

  def display_author
    user.blank? ? "<Anonymous>" : user.name
  end

end
