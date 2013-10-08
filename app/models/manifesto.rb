class Manifesto < ActiveRecord::Base
  include Variation

  attr_accessible :description, :fair_cnt, :good_cnt, :poor_cnt, :reply_cnt, :title, :winner_id
  attr_accessor :rating_grade
  belongs_to :winner
  has_many :ratings
  has_many :replies
  has_one :latest_reply, class_name: "Reply", order: "id DESC"

  def best_replies
    self.replies.where("agree_cnt >= 10").order("agree_cnt DESC").limit(3)
  end

  def politician
    self.winner.politician
  end

  def init_rating_status(user)
    return unless user

    if rating = self.ratings.where("user_id = ?", user.id).first
      @rating_grade = rating.grade
    end
  end

  def rating_status
    @rating_grade || 0
  end
end
