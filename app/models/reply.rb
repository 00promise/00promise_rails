class Reply < ActiveRecord::Base
  include Variation
  after_initialize :set_virtual_attributes

  attr_accessible :agree_cnt, :content, :disagree_cnt, :manifesto_id, :status, :user_id
  attr_accessor :is_best, :is_owner
  belongs_to :manifesto, counter_cache: :reply_cnt
  belongs_to :user
  has_many :reply_evaluations

  def set_virtual_attributes
    @is_best = false
    @is_owner = false

    if User.current_user and User.current_user.id == self.user_id
      @is_owner = true
    end
  end
end
