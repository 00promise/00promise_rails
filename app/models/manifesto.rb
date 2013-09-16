class Manifesto < ActiveRecord::Base
  attr_accessible :description, :fair_cnt, :good_cnt, :politician_id, :poor_cnt, :reply_cnt, :title
  belongs_to :politician
  has_many :ratings
  has_many :replies
  has_one :latest_reply, class_name: "Reply", order: "id DESC"

  def increment_with_sql!(attribute, by = 1)
    raise ArgumentError("Invalid attribute: #{attribute}") unless attribute_names.include?(attribute.to_s)
    original_value_sql = "CASE WHEN #{attribute} IS NULL THEN 0 ELSE #{attribute} END"
    self.class.update_all("#{attribute} = #{original_value_sql} + #{by.to_i}", "id = #{id}")
    reload
  end

  def decrement_with_sql!(attribute, by = 1)
    raise ArgumentError("Invalid attribute: #{attribute}") unless attribute_names.include?(attribute.to_s)
    original_value_sql = "CASE WHEN #{attribute} IS NULL THEN 0 ELSE #{attribute} END"
    self.class.update_all("#{attribute} = #{original_value_sql} - #{by.to_i}", "id = #{id}")
    reload
  end
end
