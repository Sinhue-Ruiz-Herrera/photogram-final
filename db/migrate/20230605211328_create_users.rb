class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :password_digest
      t.boolean :private
      t.integer :comments_count
      t.string :avatar
      t.integer :likes_count
      t.integer :own_photos_count
      t.integer :sent_follow_requests_count
      t.integer :received_follow_requests_count

      t.timestamps
    end
  end
end
