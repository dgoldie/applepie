class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content

      t.references :user
      t.references :answer


      t.timestamps
    end
  end
end
