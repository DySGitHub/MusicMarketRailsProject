    class User < ApplicationRecord
                before_save { self.email = email.downcase }

      validates :name, presence: true, length: { in: 9..30 }
      VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
      validates :email, presence: true, 
                        format: { with: VALID_EMAIL_REGEX },
                        uniqueness: { case_sensitive: false }
              has_secure_password      # A magic function!!
               validates :password, presence: true, length: { minimum: 6 }

    end    