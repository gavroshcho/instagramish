class User < ApplicationRecord
  has_many :posts
  has_many :comments

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.id).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end
