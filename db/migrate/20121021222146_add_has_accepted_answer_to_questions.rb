class AddHasAcceptedAnswerToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :has_accepted_answer, :boolean
  end
end
