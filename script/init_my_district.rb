Sigungu.all.each do |s|

  # puts "**************************************************"
  # puts "**************************************************"
  # puts s.to_yaml
  # puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

  # 대통령 매핑
  # MyDistrict.create({:position_id => 1, :sigungu_id => s.id, })

  # 시도지사 매핑
  # p = Position.find_by_district(s.sido.name)
  # puts p.to_yaml
  # MyDistrict.create({:position_id => p.id, :sigungu_id => s.id, })

  # 나머지 영역 매핑
  # p_list = Position.where("district LIKE ?", "#{s.sido.name}%#{s.name.strip}%")
  # puts p2.to_yaml
  # p_list.each do |p2|
  #   MyDistrict.create({:position_id => p2.id, :sigungu_id => s.id, })
  # end
end
