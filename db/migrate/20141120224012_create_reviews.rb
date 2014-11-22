class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references  :reviewer
      t.text        :body
      t.references  :artist
      
      t.timestamps
    end
  end
end
