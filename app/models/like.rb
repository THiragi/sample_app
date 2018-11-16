class Like < ActiveRecord::Base
    belongs_to :user
<<<<<<< HEAD
    belongs_to :micropost
=======
    belongs_to :micropost, counter_cache: :likes_count
>>>>>>> fadc696f32cda1e86a6f898a0632e706fc0138bc
    validates :user_id, presence: true
    validates :micropost_id, presence: true
    validates :user_id, :uniqueness => {:scope => :micropost_id} 
end
