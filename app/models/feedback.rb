class Feedback < ApplicationRecord
    belongs_to :user   
      validates :user_id, presence: true
      validates :content, presence: true, length: { maximum: 140 }
          validates :rating, presence: true, length: { in: 0..100 }

          default_scope -> { order(created_at: :desc) }

end

