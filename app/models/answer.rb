class Answer < ActiveRecord::Base

  attr_accessible :content, :name

  belongs_to :user
  belongs_to :question
  has_many :comments

  # PSB: Below needed for voting system
  has_reputation :votes, source: :user, aggregated_by: :sum

end
