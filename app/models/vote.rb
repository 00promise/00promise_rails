class Vote < ActiveRecord::Base

  attr_accessible :vote_id, :user_id, :versus_id
  belongs_to :versus, counter_cache: true
  belongs_to :user

  validates :versus_id, uniqueness: { scope: :user_id,
                                 message: "중복 투표하실수 없습니다." }

  before_create :increment_counter
  before_destroy :decrement_counter

  protected

  def increment_counter
    if self.vote_id == 0
      self.versus.increment! :votes_l_count
    else
      self.versus.increment! :votes_r_count
    end
  end

  def decrement_counter
    if self.vote_id == 0
      self.versus.decrement! :votes_l_count
    else
      self.versus.decrement! :votes_r_count
    end
  end
end
