class Post < ActiveRecord::Base
  acts_as_taggable
  extend FriendlyId
  friendly_id :title, use: :slugged

  scope :news, -> { tagged_with("news") }
  scope :guest_stories, -> { tagged_with("guest-stories") }
end
