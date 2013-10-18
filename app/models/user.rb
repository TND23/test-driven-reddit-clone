class User < ActiveRecord::Base
  attr_accessible :user_name, :password_digest, :session_token, :password
  validates :user_name, :password_digest, :session_token, presence: true


  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def password
    nil
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
  end
end
