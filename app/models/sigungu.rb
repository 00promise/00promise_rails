class Sigungu < ActiveRecord::Base
  attr_accessible :code, :full_name, :name, :sido_id
  belongs_to :sido
end
