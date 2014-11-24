class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :username
      t.string  :password_digest
      t.string  :first_name
      t.string  :last_name
      t.string  :email_address
      t.text    :bio
      t.string  :soundcloud_profile
      t.boolean :artist, default: false
      t.attachment :avatar

      t.timestamps
    end
  end
end
