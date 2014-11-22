class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references  :commenter
      t.text        :body
      t.references  :review

      t.timestamps
    end
  end
end
