class User < ApplicationRecord
    has_secure_password
    validates :first_name, presence: true,  uniqueness:  true
    validates :second_name, presence: true,  uniqueness: true
    validates  :username, presence:  true, uniqueness: true 
    validates :email, presence: true, uniqueness: true
    validates :email, format: {with:  URI::MailTo::EMAIL_REGEXP}
    validates :password_digest, length: {minimum: 6}, if: ->{new_record? || !password_digest.nill?}
end
