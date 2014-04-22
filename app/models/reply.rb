class Reply < ActiveRecord::Base
  include Variation
  after_initialize :set_virtual_attributes

  attr_accessible :agree_cnt, :content, :disagree_cnt, :manifesto_id, :status, :user_id
  attr_accessor :is_best
  belongs_to :manifesto, counter_cache: :reply_cnt
  belongs_to :user
  has_many :reply_evaluations

  def set_virtual_attributes
    @is_best = false
  end
end
