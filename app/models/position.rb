class Position < ActiveRecord::Base
  attr_accessible :district, :enabled, :name, :type_code, :type_name
  has_one :winner # 향후 current = true 조건 추가
  has_one :politician, through: :winner # 향후 current = true 조건 추가

end
