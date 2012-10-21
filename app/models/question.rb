class Question < ActiveRecord::Base
  attr_accessible :content, :title, :tag_list
  
  belongs_to :user
  has_many :answers
  accepts_nested_attributes_for :answers, :reject_if => :all_blank, :allow_destroy => true
  
  has_many :comments, :through => :answers

  # PSB: Below needed for tagging
  acts_as_taggable

  # PSB: Below needed for voting system
  has_reputation :votes, source: :user, aggregated_by: :sum

  # PSB: Below needed for paperclip attachments
  has_attached_file :attachment, :styles => { :small => "200x200>" }

  def display_author
    user.blank? ? "<Anonymous>" : user.name
  end

end
