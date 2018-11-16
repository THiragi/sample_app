class Micropost < ActiveRecord::Base
  belongs_to :user
  belongs_to :parent, foreign_key: "reply_id", class_name: "Micropost"
  has_many :replies, foreign_key: "reply_id", class_name: "Micropost", dependent: :destroy
  has_many :likes, dependent: :destroy #多数のLikeを持つ
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
  mount_uploader :image, ImageUploader

  def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships
                         WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
          user_id: user.id)
  end

<<<<<<< HEAD
  #MicropostがそのUserによってすでにLikeされているか判定
  def like_user(user_id)
    likes.find_by(user_id: user_id)
  end

  def post_type
    if reply_id? && content?
      "reply"
    elsif reply_id?
      "repost"
    else
      "micropost"
    end
=======
  def like_user(user_id)
   likes.find_by(user_id: user_id)
>>>>>>> fadc696f32cda1e86a6f898a0632e706fc0138bc
  end

end