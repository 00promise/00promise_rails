class Sigungu < ActiveRecord::Base
  attr_accessible :code, :name, :sido_id
  belongs_to :sido
end
