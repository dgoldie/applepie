class ChangeDataTypeForQuestionContent < ActiveRecord::Migration
  def up
    change_table :questions do |t|
      t.change :content, :string
    end
  end

  def down
    change_table :questions do |t|
      t.change :content, :text
    end
  end
end
