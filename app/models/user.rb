class User < ApplicationRecord
    has_secure_password
    validates :first_name, presence: true
    validates :second_name, presence: true
    validates  :username, presence:  true
    validates :email, presence: true
    validates :email, format: {with:  URI::MailTo::EMAIL_REGEXP}
    validates :password_digest, length: {minimum: 6}, if: ->{new_record? || !password_digest.nill?}
end
