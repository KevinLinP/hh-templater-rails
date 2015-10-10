class Post < ActiveRecord::Base
  validates :date, :email_subject, :venue_name, :short_address, :start_time, :body, :maps_url, presence: true
end
