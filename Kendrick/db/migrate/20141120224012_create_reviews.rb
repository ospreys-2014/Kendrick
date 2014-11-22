class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text        :body
      t.references  :reviewer
      t.references  :commenter
      t.references  :review
      t.references  :artist
      
      t.timestamps
    end
  end
end
