# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs

AdminUser.create([
  { :email => "admin@example.com", :encrypted_password => "$2a$10$5XZsoLdgmVncdD4mSuQlU.nSpI5R.8M/D/1a/NcPE6lqMW/Y3rJSe", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 0, :current_sign_in_at => nil, :last_sign_in_at => nil, :current_sign_in_ip => nil, :last_sign_in_ip => nil, :created_at => "2013-09-08 10:24:27", :updated_at => "2013-09-08 10:24:27" }
], :without_protection => true )



Party.create([
  { :name => "무소속", :chairman_name => nil, :assembly_leader_name => nil, :founded_on => nil, :created_at => nil, :updated_at => nil },
  { :name => "새누리당", :chairman_name => "황우여", :assembly_leader_name => "최경환", :founded_on => "1997-11-21", :created_at => nil, :updated_at => nil },
  { :name => "민주당", :chairman_name => "김한길", :assembly_leader_name => "전병헌", :founded_on => "2011-12-16", :created_at => nil, :updated_at => nil },
  { :name => "통합진보당", :chairman_name => "이정희", :assembly_leader_name => "오병윤", :founded_on => "2011-11-06", :created_at => nil, :updated_at => nil },
  { :name => "정의당", :chairman_name => "천호선", :assembly_leader_name => "심상정", :founded_on => "2012-10-21", :created_at => nil, :updated_at => nil },
], :without_protection => true )



Politician.create([
  { :name => "박근혜", :birthday => nil, :created_at => "2013-09-08 07:23:31", :updated_at => "2013-09-08 07:23:31" },
  { :name => "박원순", :birthday => nil, :created_at => "2013-09-08 07:23:31", :updated_at => "2013-09-08 07:23:31" },
  { :name => "허남식", :birthday => nil, :created_at => "2013-09-08 07:23:31", :updated_at => "2013-09-08 07:23:31" },
  { :name => "김범일", :birthday => nil, :created_at => "2013-09-08 06:58:18", :updated_at => "2013-09-08 06:58:18" },
  { :name => "송영길", :birthday => nil, :created_at => "2013-09-08 07:23:31", :updated_at => "2013-09-08 07:23:31" },
  { :name => "강운태", :birthday => nil, :created_at => "2013-09-08 07:23:31", :updated_at => "2013-09-08 07:23:31" },
  { :name => "염홍철", :birthday => nil, :created_at => "2013-09-08 07:23:31", :updated_at => "2013-09-08 07:23:31" },
  { :name => "박맹우", :birthday => nil, :created_at => "2013-09-08 07:23:31", :updated_at => "2013-09-08 07:23:31" },
  { :name => "김문수", :birthday => nil, :created_at => "2013-09-08 07:23:31", :updated_at => "2013-09-08 07:23:31" },
  { :name => "최문순", :birthday => nil, :created_at => "2013-09-08 07:23:31", :updated_at => "2013-09-08 07:23:31" },
  { :name => "이시종", :birthday => nil, :created_at => "2013-09-08 07:23:31", :updated_at => "2013-09-08 07:23:31" },
  { :name => "안희정", :birthday => nil, :created_at => "2013-09-08 07:23:31", :updated_at => "2013-09-08 07:23:31" },
  { :name => "김완주", :birthday => nil, :created_at => "2013-09-08 07:23:31", :updated_at => "2013-09-08 07:23:31" },
  { :name => "박준영", :birthday => nil, :created_at => "2013-09-08 07:23:31", :updated_at => "2013-09-08 07:23:31" },
  { :name => "김관용", :birthday => nil, :created_at => "2013-09-08 07:23:31", :updated_at => "2013-09-08 07:23:31" },
  { :name => "김두관", :birthday => nil, :created_at => "2013-09-08 07:23:31", :updated_at => "2013-09-08 07:23:31" },
  { :name => "우근민", :birthday => nil, :created_at => "2013-09-08 07:23:31", :updated_at => "2013-09-08 07:23:31" }
], :without_protection => true )



Position.create([
  { :name => "대통령", :type_name => "대통령", :type_code => 1, :district => "대한민국", :politician_id => 1, :created_at => "2013-09-08 06:16:22", :updated_at => "2013-09-08 06:16:22" },
  { :name => "서울특별시장", :type_name => "광역자치단체장", :type_code => 3, :district => "서울특별시", :politician_id => 2, :created_at => "2013-09-08 06:16:22", :updated_at => "2013-09-08 06:16:22" },
  { :name => "부산광역시장", :type_name => "광역자치단체장", :type_code => 3, :district => "부산광역시", :politician_id => 3, :created_at => "2013-09-08 06:16:22", :updated_at => "2013-09-08 06:16:22" },
  { :name => "대구광역시장", :type_name => "광역자치단체장", :type_code => 3, :district => "대구광역시", :politician_id => 4, :created_at => "2013-09-08 06:18:15", :updated_at => "2013-09-08 06:18:15" },
  { :name => "인천광역시장", :type_name => "광역자치단체장", :type_code => 3, :district => "인천광역시", :politician_id => 5, :created_at => "2013-09-08 06:18:15", :updated_at => "2013-09-08 06:18:15" },
  { :name => "광주광역시장", :type_name => "광역자치단체장", :type_code => 3, :district => "광주광역시", :politician_id => 6, :created_at => "2013-09-08 06:17:56", :updated_at => "2013-09-08 06:17:56" },
  { :name => "대전광역시장", :type_name => "광역자치단체장", :type_code => 3, :district => "대전광역시", :politician_id => 7, :created_at => "2013-09-08 06:17:56", :updated_at => "2013-09-08 06:17:56" },
  { :name => "울산광역시장", :type_name => "광역자치단체장", :type_code => 3, :district => "울산광역시", :politician_id => 8, :created_at => "2013-09-08 06:17:56", :updated_at => "2013-09-08 06:17:56" },
  { :name => "경기도지사", :type_name => "광역자치단체장", :type_code => 3, :district => "경기도", :politician_id => 9, :created_at => "2013-09-08 06:17:56", :updated_at => "2013-09-08 06:17:56" },
  { :name => "강원도지사", :type_name => "광역자치단체장", :type_code => 3, :district => "강원도", :politician_id => 10, :created_at => "2013-09-08 06:17:56", :updated_at => "2013-09-08 06:17:56" },
  { :name => "충청북도지사", :type_name => "광역자치단체장", :type_code => 3, :district => "충청북도", :politician_id => 11, :created_at => "2013-09-08 06:17:56", :updated_at => "2013-09-08 06:17:56" },
  { :name => "충청남도지사", :type_name => "광역자치단체장", :type_code => 3, :district => "충청남도", :politician_id => 12, :created_at => "2013-09-08 06:17:56", :updated_at => "2013-09-08 06:17:56" },
  { :name => "전라북도지사", :type_name => "광역자치단체장", :type_code => 3, :district => "전라북도", :politician_id => 13, :created_at => "2013-09-08 06:17:56", :updated_at => "2013-09-08 06:17:56" },
  { :name => "전라남도지사", :type_name => "광역자치단체장", :type_code => 3, :district => "전라남도", :politician_id => 14, :created_at => "2013-09-08 06:17:56", :updated_at => "2013-09-08 06:17:56" },
  { :name => "경상북도지사", :type_name => "광역자치단체장", :type_code => 3, :district => "경상북도", :politician_id => 15, :created_at => "2013-09-08 06:17:56", :updated_at => "2013-09-08 06:17:56" },
  { :name => "경상남도지사", :type_name => "광역자치단체장", :type_code => 3, :district => "경상남도", :politician_id => 16, :created_at => "2013-09-08 06:17:56", :updated_at => "2013-09-08 06:17:56" },
  { :name => "제주특별자치도지사", :type_name => "광역자치단체장", :type_code => 3, :district => "제주특별자치도", :politician_id => 17, :created_at => "2013-09-08 06:17:56", :updated_at => "2013-09-08 06:17:56" }
], :without_protection => true )


