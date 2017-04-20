class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :recipients

  def twitter_authorized?
    return true if self.twitter_token_digest && self.twitter_secret_digest
  end
end