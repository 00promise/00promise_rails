class Reply < ActiveRecord::Base
  include Variation
  after_initialize :set_virtual_attributes

  attr_accessible :agree_cnt, :content, :disagree_cnt, :manifesto_id, :status, :user_id
  attr_accessor :is_best, :is_owner, :user_eval_type

  #belongs_to :manifesto, counter_cache: :reply_cnt
  belongs_to :replyable, polymorphic: true, counter_cache: true
  belongs_to :user
  has_many :reply_evaluations, dependent: :destroy

  def set_virtual_attributes
    @is_best = false
    @is_owner = false
    @user_eval_type = nil

    if User.current_user
      if User.current_user.id == self.user_id
        @is_owner = true
      end

      user_evaluation = self.reply_evaluations.where("user_id = ?", User.current_user.id).first
      if user_evaluation
        @user_eval_type = user_evaluation.eval_type
      end
    end
  end
end
