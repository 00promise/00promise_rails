class Manifesto < ActiveRecord::Base
  include Variation

  attr_accessible :description, :fair_cnt, :good_cnt, :poor_cnt, :reply_cnt, :title, :winner_id, :replies_count
  attr_accessor :rating_grade
  belongs_to :winner
  has_many :ratings
  has_many :replies, as: :replyable, dependent: :destroy

  def best_replies
    self.replies.where("agree_cnt >= 10").order("agree_cnt DESC").limit(3)
  end

  # DEPRECATED
  def best_agreed_reply
    reply = self.replies.order("agree_cnt DESC").first

    return nil unless reply

    if reply.agree_cnt >= 10
      reply.is_best = true
    end
    reply
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

  def reply_cnt
    self.replies_count || 0
  end
end
