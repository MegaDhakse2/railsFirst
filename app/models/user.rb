class User < ApplicationRecord
  PASSWORD_FORMAT = /\A
  (?=.{8,})          # Must contain 8 or more characters
  (?=.*\d)           # Must contain a digit
  (?=.*[a-z])        # Must contain a lower case character
  (?=.*[A-Z])        # Must contain an upper case character
  (?=.*[[:^alnum:]]) # Must contain a symbol
/x

  has_secure_password
  validates :userName, presence: true, length: {maximum: 10}
  validates :password, presence: true, length: {minimum: 8}, format: { with: PASSWORD_FORMAT }
  validates :password_digest, presence: true



end
