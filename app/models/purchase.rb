class Purchase < ApplicationRecord
  belongs_to :user
    
    validates :user_id, presence: true
      validates :address, presence: true, length: { maximum: 50 }
          validates :country, presence: true, length: { maximum: 30 }
      validates :delivery, presence: true, length: { maximum: 20 }
      validates :guitarid, presence: true, length: { maximum: 3 }


          default_scope -> { order(created_at: :asc) }
  

def self.search(search)
  where("country LIKE ?", "%#{search}%") 
  where("address LIKE ?", "%#{search}%")
end
    
end
