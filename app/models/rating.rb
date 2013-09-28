class Rating < ActiveRecord::Base
  attr_accessible :grade, :manifesto_id, :user_id
  belongs_to :manifesto
  belongs_to :user
  after_create :after_create
  after_update :after_update
  after_destroy :after_destroy

  GRADE_MAP = { 1 => :good_cnt, 2 => :fair_cnt, 3 => :poor_cnt }

  def after_create
    self.manifesto.increment_with_sql!(GRADE_MAP[self.grade])
  end

  def after_update
    if self.grade_changed?
      before_grade, after_grade = self.grade_change
      self.manifesto.decrement_with_sql!(GRADE_MAP[before_grade])
      self.manifesto.increment_with_sql!(GRADE_MAP[after_grade])
    end
  end

  def after_destroy
    self.manifesto.decrement_with_sql!(GRADE_MAP[self.grade])
  end
end
