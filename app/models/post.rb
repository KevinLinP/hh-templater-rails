class Post < ActiveRecord::Base
  validates :date, :email_subject, :venue_name, :short_address, :start_time, :body, :maps_url, presence: true

  def facebook_preview
    <<-TEXT
Hashy Hour!

#{venue_name}
#{date}
#{start_time} - whenever!

{{#if locationName}}{{locationName}}, {{/if}}{{shortAddress}}

#{body}

#{maps_url}
TEXT
  end
end
