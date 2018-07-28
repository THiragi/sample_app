class Like < ActiveRecord::Base
    belongs_to :user_id
    belongs_to :micropost_id
    validates :user_id, presence: true
    validates :micropost_id, presence: true
end
