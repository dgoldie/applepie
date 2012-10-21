class AddAcceptedBooleanToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :accepted_answer, :boolean
  end
end
