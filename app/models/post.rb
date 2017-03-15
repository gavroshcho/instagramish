class Post < ApplicationRecord
  belongs_to :user

  mount_uploaders :avatars, AvatarUploader
  serialize :avatars, JSON

end
