class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string  :name
      t.string  :image_url

      t.timestamps
    end
  end
end
