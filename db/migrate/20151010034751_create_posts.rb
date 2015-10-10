class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.date :date, null: false
      t.string :email_subject, null: false

      t.string :venue_name, null: false
      t.string :location_name
      t.string :short_address, null: false
      t.string :start_time
      t.string :body, null: false

      t.string :maps_url, null: false
      t.string :header_image_url
      t.string :footer_image_url

      t.timestamps
    end
  end
end
