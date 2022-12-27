class User < ApplicationRecord
    has_secure_password
    validates :first_name, presence: true, uniqueness: true 
    validates :second_name, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
    validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}, presence: true, uniqueness: true
    validates :password, presence: true, length: { in: 6..10 }

end

