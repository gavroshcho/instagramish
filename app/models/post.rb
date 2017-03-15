class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  mount_uploaders :avatars, AvatarUploader
  serialize :avatars, JSON

end
