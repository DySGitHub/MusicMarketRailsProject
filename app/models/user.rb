    class User < ApplicationRecord
                before_save { self.email = email.downcase }
<<<<<<< HEAD
        
      attr_accessor :remember_token
        has_many :feedbacks, dependent: :destroy
         has_many :purchases
                 has_many :piano_purchases
         has_many :acc_purchases

      validates :name, presence: true, length: { in: 5..30 }
=======
has_many :microposts, dependent: :destroy
        attr_accessor :remember_token
      validates :name, presence: true, length: { in: 9..30 }
>>>>>>> 513d3798b282aa688b69d699e9b0a49ca679abf0
      VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
      validates :email, presence: true, 
                        format: { with: VALID_EMAIL_REGEX },
                        uniqueness: { case_sensitive: false }
              has_secure_password      
               validates :password, presence: true, length: { minimum: 6 }
        
                def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ?    
                    BCrypt::Engine::MIN_COST :
                    BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
                end

                def User.new_token
        SecureRandom.urlsafe_base64
                end
        
            def remember
        self.remember_token = User.new_token
        update_attribute(:remember_digest, 
                    User.digest(remember_token))
            end
        def authenticated?(remember_token)
        BCrypt::Password.new(remember_digest).is_password?(remember_token)
      end
        
         def forget
          update_attribute(:remember_digest, nil)
       end
            def feed
                Micropost.where("user_id = ?", id)
            end

        def feed
                Feedback.where("user_id = ?", id)
            end
def self.search(search)
if search
    find(:all, :conditions => ['name LIKE ?', "%#{:search}%"])
  else
"    find()
"  end
      end
    end

        