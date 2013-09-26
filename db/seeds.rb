# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs

AdminUser.create!([
  { :email => "rangken@gmail.com", :password => "1234abcd", :encrypted_password => "$2a$10$1nnmif8w7WsS5E8KRhh4tuHJFizzvgjMvMM9hOsGYvLchVSjnYvfa", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 0, :current_sign_in_at => nil, :last_sign_in_at => nil, :current_sign_in_ip => nil, :last_sign_in_ip => nil, :created_at => "2013-09-08 11:00:35", :updated_at => "2013-09-08 11:00:35" },
  { :email => "admin@00promise.org",  :password => "1234abcd",:encrypted_password => "$2a$10$zELjjyMXylG6194Rxu6YdOj6cnDGUQQxGrG6/BU.5aHBRpXAqt9IG", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 3, :current_sign_in_at => "2013-09-08 23:20:07", :last_sign_in_at => "2013-09-08 11:31:49", :current_sign_in_ip => "175.223.29.250", :last_sign_in_ip => "106.244.123.118", :created_at => "2013-09-08 11:27:38", :updated_at => "2013-09-08 23:20:07" },
  { :email => "joonsoo.kang@gmail.com", :password => "1234abcd", :encrypted_password => "$2a$10$pVeK4BYvgwYO0XqrFZKQ8ei2A34NoVgiXOmnut2ZtFm71HsSnm2be", :reset_password_token => "21e2fe78589e256443d237531d9447522f9f2b74a4175162ed00a1afe096c659", :reset_password_sent_at => "2013-09-08 11:28:53", :remember_created_at => nil, :sign_in_count => 1, :current_sign_in_at => "2013-09-08 11:30:49", :last_sign_in_at => "2013-09-08 11:30:49", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :created_at => nil, :updated_at => "2013-09-08 11:30:49" }
], :without_protection => true )



Election.create([
  { :name => "제5회 전국동시지방선거", :held_on => "2010-06-02", :created_at => "2013-09-26 10:29:52", :updated_at => "2013-09-26 10:29:52" },
  { :name => "제19대 국회의원선거", :held_on => "2012-04-11", :created_at => "2013-09-26 10:30:19", :updated_at => "2013-09-26 10:30:19" },
  { :name => "제18대 대통령선거", :held_on => "2012-12-19", :created_at => "2013-09-26 10:30:48", :updated_at => "2013-09-26 10:30:48" }
], :without_protection => true )



Manifesto.create([
  { :politician_id => 1, :title => "공정성을 높이는 경제민주화", :description => "현황과 문제점\r\n- 우리 경제는 그동안 효율성을 강조한 반면, 공정성이 상대적으로 간과되었음. \r\n- 대주주의 사익추구행위, 대기업의 중소기업간 거래에 있어서 시장지배력 남용행위, 담합을 통한 경제력 남용 행위 등 시장의 불공정성이 존재하고 있음.\r\n\r\n목 표\r\n- 공정한 시장경제질서 확립과 서민, 중소기업과 비정규직   등 경제적 약자 보호를 통한 경제민주화 실현\r\n\r\n이행절차 및 이행기간\r\n- 경제적 약자에 확실하게 도움드리는 경제민주화 추진\r\n- 국민경제에 큰 부담 주고, 국민적 공감대 미흡한 정책은 단계적 추진, 부작용의 최소화와 효과의 극대화\r\n- 대기업 집단의 장점은 살리고, 잘못된 점은 반드시 바로잡기\r\n- 골목상권 등 경제적 약자에 대한 권익 보호\r\n- 공정거래 관련법 집행체계의 획기적 개선\r\n- 대기업 경영자의 불법행위와 총수일가 사익편취행위 엄격 대처\r\n- 기업지배구조개선 개선\r\n- 금산분리 강화\r\n- 수도권과 비수도권, 대기업과 중소기업, 수출기업과 내수기업 등의 균형적 성장 추진\r\n- 비정규직 차별해소\r\n- 조세와 재정 정책의 소득 재분배제고 효과 제고\r\n\r\n재원조달방안\r\n- 대부분이 법·제도 정비사항이고 일반적인 경제정책에 포함시켜 집행될 것이므로 별도의 재원조달 불필요", :reply_cnt => 4, :good_cnt => 0, :fair_cnt => 1, :poor_cnt => 1, :created_at => "2013-09-10 17:44:33", :updated_at => "2013-09-10 17:44:33" },
  { :politician_id => 1, :title => "한국형 복지체계의 구축", :description => "현황과 문제점\r\n- 복지혜택을 반드시 받아야 할 사회적 약자들의 경우에도 복지사각지대가 광범위하게 존재함. \r\n- 복지제도와 재정이 많이 확대되었지만, 저소득층과 중산층이 체감하기에는 부족한 수준임.\r\n- 복지전달체계가 공급자 중심으로 되어 있어서 비효율성문제가 나타나고, 국민들의 다양한 복지수요에 적절하게 대처하지 못하고 있음.\r\n목 표\r\n- 생애주기별 맞춤형 복지정책을 통해 촘촘한 사회안전망 구축하여 개인들의 다양한 복지수요를 충족시킴으로써 사회통합을 구현함.\r\n\r\n이행절차 및 이행기간\r\n- 소득보장과 복지서비스를 균형적으로 제공할 수 있는 사회안전망을 구축함.\r\n- 일자리를 통해 소득을 창출하고 자아를 실현할 수 있도록 일과 함께하는 고용복지를 확대함.\r\n- 복지와 고용의 연계를 강화하여 일하는 사람들이 빈곤에 빠지지 않게 함.\r\n- 중증질환에 대한 보장을 강화하여 의료비 때문에 집안이 망하는 일이 최소화되도록 함.\r\n- 수요자 중심의 전달체계 개편과 정책 조정기능 강화할 것임. 이를 통해 복지 사각지대를 발생시키고 국민의 체감을 떨어뜨리는 공급자 중심의 부처간 칸막이 복지를 개선함.\r\n\r\n재원조달방안\r\n- 나라 빚이 더 이상 늘지 않고 지자체 및 국민 부담이 크게 늘어나지 않도록 재정개혁을 통해 재원을 조달하겠음.\r\n- 재원조달은 국제기구(IMF, OECD) 권고에 따라 ‘세출절감 : 세입확대=6 : 4’에 맞춰 마련하여 국민 부담을 과도하게 증가시키지 않으면서 지속가능한 복지정책을 추진토록 하겠음.\r\n- 재원확보의 우선순위 : ① 세출 구조조정, ② 조세개혁, ③ 복지행정 개혁", :reply_cnt => 1, :good_cnt => 0, :fair_cnt => 0, :poor_cnt => 0, :created_at => "2013-09-10 17:45:45", :updated_at => "2013-09-16 02:15:41" },
  { :politician_id => 1, :title => "창조경제를 통한 성장동력 확보와 일자리 창출", :description => "현황과 문제점\r\n - 우리경제는 ‘고용 없는 성장’을 넘어 일자리 창출 중심의 새로운 성장 방식이 필요함.\r\n - 기존의 경제발전 방향이 추격형·모방형, 경제성장률 지향, 양적성장을 추구하고 있어 일자리와 국민의 삶의 질을 동시에 개선하기 어려운 한계점이 있으며, 새로운 성장 동력을 발굴하여 지속가능한 경제발전 체제를 갖추는데도 한계가 있음\r\n\r\n목 표\r\n- 상상력과 창의력 그리고 과학기술을 기반으로 하는 경제운용으로 성장 동력을 확보하고 일자리를 창출함,\r\n\r\n이행절차 및 이행기간\r\n- 경제체질을 다른 나라를 따라가는 추격형 경제에서 다른 나라를 앞서가는 선도형 경제로 바꿀 것임\r\n- 정보통신기술 등 과학기술을 산업 전반에 적용하고, 활용하고 융합하여, 전통 제조업을 고부가가치화하고 서비스업에서 새로운 시장, 새로운 일자리를 만들 것임.\r\n- 성장률보다는 고용률을 높이는 쪽으로 경제정책을 전환함.\r\n- 소프트웨어 산업을 미래성장산업으로 육성하여 창조경제의 인프라를 구축함.\r\n- 다양한 공공정보를 개방하고 국민과 공유하는 창조정부를 구현하여 국민소통의 강화와 더불어 미래 성장동력으로도 활용함.\r\n- 새로운 기업이 끊임없이 탄생하는 창업국가 코리아를 만들어 나감. \r\n\r\n재원조달방안\r\n- 창조경제를 구현하기 위해서 과거와 같이 정부가 대량으로 재정을 투입하는 방식이 아니라 정부는 각종 인프라구축과 제도개선에 주력하고, 민간의 참여와 투자를 확대하는 방식으로 진행할 것임.", :reply_cnt => 2, :good_cnt => 0, :fair_cnt => 0, :poor_cnt => 0, :created_at => "2013-09-10 17:46:17", :updated_at => "2013-09-10 17:46:17" },
  { :politician_id => 1, :title => "한반도 신뢰프로세스 정착", :description => "현황과 문제점\r\n- 유화주의적 포용정책과 원칙에 입각한 대북정책 모두 북한사회의 의미 있는 변화를 유도하지는 못했음.\r\n- 이러한 극단적인 접근방법으로 인해 그동안의 남북관계 개선 노력에도 불구하고 지속가능한 평화를 만들지 못함. \r\n- 남북한 사이 또는 북한과 국제사회 사이에 이뤄진 지금까지의 많은 약속과 국제기준을 지키는 전략적 신뢰관계가 부족한 상황임.\r\n\r\n목 표\r\n- 한반도 신뢰프로세스를 통하여 한반도의 지속가능한 평화정착 및 통일한국의 기틀을 다짐\r\n\r\n이행절차 및 이행기간\r\n- 주권과 안보를 확실히 지키고 이에 기반하여 대북정책, 외교정책을 실시함. \r\n- 억지력을 보유한 상태에서 협상의 다각화를 통해 북핵문제의 해결을 추진함.\r\n- 한반도 신뢰프로세스를 통한 우선적으로 상호간 신뢰관계를 회복하고, 남북관계를 정상화함.\r\n- 당국자간 남북대화 재개, 인도적 지원 활성화, 남북한간 및 북한과 국제사회간 기존 약속 확인 및 실천 시작 등을 통해 신뢰프로세스를 작동\r\n- 신뢰프로세스와 함께 정치안보 분야와 교류협력 분야의 대화와 협상을 균형적으로 추진함\r\n- 임기내 한반도 신뢰프로세스에 대한 실효성 확보 및 국민적, 국제적 공감대를 확산시키고, 남북관계의 평화적 발전을 제도적 수준에서 정착시켜, 한반도 통일의 초석을 다짐\r\n- 동아시아 평화와 유라시아 협력을 촉진하는 외교를 펼침\r\n- FTA 등과 같은 경제외교를 업그레이드하고 이를 통해 신성장 동력을 발굴함.\r\n- “매력한국”건설을 위한 “국민외교시대”를 개막함.\r\n\r\n재원조달방안\r\n- 재원이 많이 소요되는 경제협력 사업 활성화 이전에 남북간 신뢰를 공고히 하자는 공약이므로 남북협력기금에 의한 인도적 지원 이외의 별도의 재원조달 불필요", :reply_cnt => 0, :good_cnt => 0, :fair_cnt => 0, :poor_cnt => 0, :created_at => "2013-09-10 17:46:55", :updated_at => "2013-09-10 17:46:55" },
  { :politician_id => 1, :title => "정치혁신을 통한 신뢰회복과 미래형 창조정부 구현", :description => "현황과 문제점\r\n- 뇌물수수 등 정치 관련 각종 부정부패가 끊임없이 발생하고, 국민의 이익보다는 정파의 이익을 우선시하는 정치로 인하여 정치권에 대한 국민적 불신이 심각한 상황임.\r\n- 저출산문제, 환경문제 등 지금까지의 방식으로는 풀 수 없는 새로운 도전을 극복하기 위해서는 과거와는 다른 새로운 정부운영 패러다임이 필요\r\n\r\n목 표\r\n- 정치부패를 원천적으로 근절하고, 민생을 최우선으로 하는 신뢰받는 정치가 될 수 있도록 정치를 혁신함.\r\n- 개방·공유·참여·소통을 통해 미래형 창조정부를 구현함.\r\n\r\n이행절차 및 이행기간\r\n- 정치쇄신을 지속적으로 추진함.\r\n - ①국회의원 후보선출 여야 동시 국민참여경선 법제화 및 비례대표 공천시 밀실공천 금지 ② 국회의원 후보 선출은 선거일 2개월전, 대통령 후보는 선거일 4개월전 ③기초자치단체의 장과 의원 정당공천 폐지 ④부정부패 사유로 재보궐 선거시 원인제공자가 선거비용 부담 ⑤공천관련 금품 제공시 수수한 금품의 30배 이상 과태료 ⑥공무 담임권 제한 기간 20년으로 연장 ⑦정치자금 자료 공개기간 4년으로 연장 ⑧국회 윤리위원회 전원 외부인사 구성 ⑨선거구 획정위원회 전원 외부인사 구성 ⑩국회의원 면책특권 제한과 불체포특권 폐지 ⑪예결위 상설화와 상시적 예결산 심사 ⑫국무총리의 국무위원 제청권 보장과 장관의 부처 및 산하기관장 인사권 보장 ⑬기회균등위원회 설치 ⑭정기국회 행정부 수반 연설 정례화 ⑮특별감찰관제(국회추천) 도입 ·고위공지자 비리 수사 위한 상설특검제도 도입  ·공무원의 직무수행 관련 사익추구 금지  · 4년 중임제와 국민의 생존권적 기본권 강화 포함하는 개헌 추진\r\n- 개인별 맞춤행복을 지향하는 정부 3.0시대 달성을 위해투명하고 유능한 서비스 정부를 구현함. 이를 위해 정보공개 확대와 공공정보의 개방, 정부 내 협업시스템 구축, 정부와 민간과의 협업 확대, 클라우드 컴퓨팅 기반의 정부 지식경영시스템 구축, 맞춤형 서비스 제공, 국가미래전략센터 구축 등을 실천함.\r\n\r\n재원조달방안\r\n- 정치혁신분야 : 해당사항 없음(법 ·제도적 정비 및 정치혁신을 위한 정치권 및 국민적 자정노력 사항)\r\n- 미래형 창조정부 구현 : 종합적으로 정부 통합 클라우드 구축 등 인프라 확보에 필요한 재원은 초기에는 국비 지원을 통해 마련해야 하겠지만, 시간이 경과하면 통합에 따른 예산 절감 및 불요불급한 행정비용 감소를 통해 오히려 국비지출을 줄일 수 있을 것임", :reply_cnt => 1, :good_cnt => 0, :fair_cnt => 0, :poor_cnt => 0, :created_at => "2013-09-10 17:47:20", :updated_at => "2013-09-10 17:47:20" },
  { :politician_id => 1, :title => "일자리를 늘리고, 지키고, 질을 올리는 ‘늘·지·오’정책 추진", :description => "현황과 문제점\r\n- 청년층에서부터 중장년층과 노년층에 이르기까지 일자리부족, 일자리의 질 저하 등 다양한 일자리 문제가 나타나고 있음.  \r\n- 비정규직근로자의 비중이 많은 가운데, 비정규직 근로자는 정규직에 비해 낮은 임금과 심각한 고용불안, 사회보장제도의 사각지대라는 어려움에 처해있음.\r\n- 숫자에 매몰되어 일자리 몇 만개 만드는 것보다 좋은 일자리를 어떻게 만들것이냐가 중요하며, 고용불안, 고용복지 확충을 통한 일자리의 질을 올려야 함.\r\n\r\n목 표\r\n- 창조경제로 좋은 일자리 늘리기, 고용불안으로부터 일자리 지키기, 고용복지 확충을 통한 일자리 질 올리기를 통해 일자리문제를 해소함.\r\n\r\n이행절차 및 이행기간\r\n- 상시업무를 담당하는 비정규직 근로자는 정규직으로 전환하는 고용관행을 정착하여, 비정규직 근로자의 실질적 고용안정을 실현. 비정규직의 비중을 OECD 평균 수준까지 낮추도록 노력함\r\n- 국가, 지자체, 공기업 등 공공부문의 경우 우선적으로 상시업무에 대한 비정규직 고용을 폐지하고 정규직으로 고용하도록 유도함\r\n- 대기업은 상시·지속적 업무에 종사하는 기간제, 단기간 근로자에 대해 정규직 또는 무기계약직으로 전환을 유도함\r\n- 대기업에게 매년 근로자의 고용형태를 정규직과 비정규직으로 구분하여 공시하도록 하여 대기업이 비정규직을 과도하게 사용하는 관행을 개선함\r\n- 비정규직에 대한 차별시정제도를 도입함.\r\n- 소프트웨어, 문화 및 문화컨텐츠산업, 사업지원서비스업 육성을 통해 새로운 일자리를 창출함.\r\n- 학벌, 스펙과 상관없이 도전정신과 창의력으로 취업할 수 있도록 하는 스펙초월채용시스템을 확대 도입\r\n- 청년의 해외취업 기회 확대\r\n- 근로자 정년 60세, 해고요건 강화 등의 제도적 보호장치를 마련함.\r\n- 일방적 구조조정과 정리해고를 방지할 사회적 대타협기구 구성\r\n- 근로시간 단축, 사회보험 국가지원, 최저임금 인상\r\n\r\n재원조달방안\r\n- 국가의 경우에는 인건비 지출의 적정 배분안을 마련하여 재원을 조달하도록 노력함\r\n- 지자체, 공기업 등 공공부문의 비정규직을 정규직화 할 수 있도록 구조개혁 및 다른 예산 절감을 통해 자체재원을 마련하도록 하고, 국고지원은 인센티브로만 활용\r\n- 나라 빚이 더 이상 늘지 않고 지자체 및 국민 부담이 크게 늘어나지 않도록 재정개혁을 통해 재원을 조달하겠음.\r\n- 재원조달은 국제기구(IMF, OECD) 권고에 따라 ‘세출절감 : 세입확대=6 : 4’에 맞춰 마련하여 국민부담을 과도하게 증가시키지 않으면서 지속가능한 복지정책을 추진토록 하겠음.\r\n- 재원확보의 우선순위 : ① 세출 구조조정, ② 조세개혁, ③ 복지행정 개혁", :reply_cnt => 0, :good_cnt => 0, :fair_cnt => 0, :poor_cnt => 0, :created_at => "2013-09-10 17:47:46", :updated_at => "2013-09-10 17:47:46" },
  { :politician_id => 1, :title => "농어촌 활력화와 중소중견기업 육성", :description => "현황과 문제점\r\n- 농어촌과 농수산업의 경제·사회적 여건이 열악하여 농  어민의 삶의 질이 떨어지고 도농간 소득 격차가 확대되고 있음.\r\n- 중소기업이 기술혁신 등을 통해 중견기업으로 발전해 나갈 수 있는 여건이 부족함.\r\n- 중앙정부와 지방정부가 유사한 중소기업지원정책을 중복적으로 추진하고, 또한 부처간 칸막이식 지원으로 인해 효율성, 효과성이 부족함.\r\n- 글로벌 기업의 국내 중소기업과의 상생 프로그램 미흡\r\n\r\n목 표\r\n- 농어촌의 삶의 질을 높이고, 농수산업의 경쟁력을 키워서 농어업을 미래유망산업으로 발전시키겠음.\r\n- 중소중견기업을 집중 육성하여 일자리를 창출하고 미래 성장동력으로 이끌어 나감\r\n\r\n이행절차 및 이행기간\r\n- 직불제 확대와 유통개혁 등을 통해 농어가 소득을 증대하고, 농수산재해대책 개편 등을 통해 경영안정망을 강화함.\r\n- IT등 과학기술을 접목하여 농림수산식품산업의 경쟁력을 강화하고, 안전한 식품의 안정적 공급체계를 구축함.\r\n\r\n- 현재의 공급자 중심형 지원정책에서 수요자 중심형 지원정책으로 전환함.\r\n- 중소기업이 중견기업으로 발전할 수 있도록 단계별 성장지원정책을 수립하여 집행함.\r\n- 중견기업이 글로벌 전문기업화로 성장할 수 있도록 글로벌경경지원체제를 구축함\r\n- 산업단지 구조 고도화를 조기에 실현하기 위한 종합 추진체계를 구축하고 시행함.\r\n- 글로벌 기업의 국내 중소중견기업과 상생협력을 위한 다양한 프로그램을 추진함.\r\n\r\n\r\n재원조달방안\r\n- 기존 지원사업의 칸막이식 지원과 중복사업의 통폐합을 통해 소요재원 대부분 충당가능\r\n- 나라 빚이 더 이상 늘지 않고 지자체 및 국민 부담이 크게 늘어나지 않도록 재정개혁을 통해 재원을 조달하겠음.\r\n- 국민과 함께 개혁해 나가는 알뜰한 나라살림을 운용하겠음.\r\n- 재원조달은 국제기구(IMF, OECD) 권고에 따라 ‘세출절감 : 세입확대=6 : 4’에 맞춰 마련하여 국민부담을 과도하게 증가시키지 않으면서 지속가능한 복지정책을 추진토록 하겠음.\r\n- 재원확보의 우선순위 : ① 세출 구조조정, ② 조세개혁, ③ 복지행정 개혁", :reply_cnt => 0, :good_cnt => 0, :fair_cnt => 0, :poor_cnt => 0, :created_at => "2013-09-10 17:48:16", :updated_at => "2013-09-10 17:48:16" },
  { :politician_id => 1, :title => "꿈과 끼를 마음껏 키우는 행복교육", :description => "현황과 문제점\r\n- 입시위주의 교육으로 인해 교육현장이 점수따기 무한 경쟁이 만연해 있으며, 이에 따라 학생들의 학습 흥미와 창의력이 저하되고 있음.\r\n- 학생의 꿈과 끼를 찾아서 살려주는 교육, 협력을 통해서 서로가 성장하는 교육, 인성과 창의성을 길러주는 교육으로 대전환해야 함.\r\n- 치열한 입시경쟁, 높은 등록금 수준, 불필요한 스펙쌓기 등으로 인해 높은 사교육비를 부담하고 있음.\r\n\r\n목 표\r\n- 학생 개개인의 꿈과 끼를 깨우는 교육으로 대전환하고, 학력·학벌중심의 사회체제를 능력중심으로 대전환하여 개개인의 꿈이 이루어지는 나라를 만들어 나감.\r\n\r\n이행절차 및 이행기간\r\n- 현행 입시중심의 교육과정을 꿈과 끼를 살려주는 교육과정으로 전환함.\r\n- 교원의 전문성과 사기를 높여 공교육 회복의 전기를 마련함.\r\n- 교육지원청을 행정업무기관에서 수업연구 및 지원기관으로 전환함.\r\n- 대학교 등록금부담을 반으로 줄임.\r\n- 학자금 대출의 실질금리 제로화를 추진함.\r\n- 중학교 과정 중에 시험없는 ‘자유학기제’를 도입하여,  창의성 확대와 직업탐색 기회로 활용함.\r\n- 학원 도움 필요 없는 ‘교과서 완결 학습 체제’ 구축\r\n- 선행학습을 유발하는 시험을 금지하고, 각종 입시에서 이전교과과정을 뛰어넘는 문제의 출제를 금지하여 사교육비 부담을 완화하고, 학교교육을 정상화함.\r\n- 밤 10시까지 초등학교 ‘온종일 학교’를 운영함.\r\n- 초등학교 체육전담교사를 배치하고 스포츠강사 채용을 확대하는 등 학교체육을 활성화함.\r\n\r\n재원조달방안\r\n- 나라 빚이 더 이상 늘지 않고 지자체 및 국민 부담이 크게 늘어나지 않도록 재정개혁을 통해 재원을 조달하겠음.\r\n- 국민과 함께 개혁해 나가는 알뜰한 나라살림을 운용하겠음.\r\n- 재원조달은 국제기구(IMF, OECD) 권고에 따라 ‘세출절감 : 세입확대=6 : 4’에 맞춰 마련하여 국민부담을 과도하게 증가시키지 않으면서 지속가능한 복지정책을 추진토록 하겠음.\r\n- 재원확보의 우선순위 : ① 세출 구조조정, ② 조세개혁, ③ 복지행정 개혁\r\n- 공약의 많은 내용이 현재 잘못된 교육 프로그램 자체를 개선하는 것이므로 행복교육이 가능하도록 새로운 프로그램이 만들어지면 기존 예산을 전환하거나 추가 예산을 지원토록 함.", :reply_cnt => 0, :good_cnt => 0, :fair_cnt => 0, :poor_cnt => 0, :created_at => "2013-09-10 17:48:37", :updated_at => "2013-09-10 17:48:37" },
  { :politician_id => 1, :title => "맞춤형 보육과 일·가정 양립", :description => "현황과 문제점\r\n- 출산과 양육의 부담으로 인해 여성의 자아실현과 가정의 행복증진에 어려움을 겪고 있으며, 이로 인해 출산율의 저하현상이 발생하고 있음.\r\n- 양성평등적 직장문화가 부족하여 여성이 일자리에 진입하기 어려울 뿐만 아니라 진입한 이후에도 일과 가족생활을 양립하기 어려움\r\n- 지속적인 여성취업을 뒷받침하는 정책의 실천적 노력이 부족하여 일·가족양립 관련 제도의 실효성이 미흡함.\r\n\r\n목 표\r\n- 맞춤형 보육서비스 제도 확립과 일·가정 양립을 지원하여 여성의 경제활동참가율과 출산율 제고를 달성함\r\n\r\n이행절차 및 이행기간\r\n- 결혼과 출산이 보다 여성친화적인 생애사건이 될 수 있도록 세제지원을 포함한 다양한 지원방안을 추진함. \r\n- 일시보육시스템 구축, 방과후 돌봄 서비스 및 학교프로그램 활성화, 임신기간 근로시간 단축제 및 아빠의 달 도입 등을 통해 임신, 출산, 그리고 자녀양육에 대한 사회적 책임을 확대하고 여성의 자녀양육에 대한 부담을 경감함.\r\n- 공공기관 여성관리자 목표제를 도입하고, 여성인재아카데미를 설립해 공공·민간부문 여성인재 10만명을 양성함.\r\n - 셋째아이부터 대학등록금 전액을 지원함.\r\n - 여성들의 재취업활동을 지원하기 위해 새로일하기센터를 대폭 확대함.\r\n - 저소득층 기저귀·분유값에 대한 국가책임을 확대하고, 임산부 영양관리사업을 확대함.\r\n - 노산 등 고위험 임산부의 진료비를 지원하고, 고위험 분만 통합치료센터 설립\r\n - 한부모 가정 양육비 지원을 확대하고, 이혼가정 양육비의 대지급 기관을 신설함.\r\n - 결혼이민자와 다문화가족에 ‘다문화가족생활지도사’ 파견 사업을 실시함.\r\n\r\n재원조달방안\r\n- 나라 빚이 더 이상 늘지 않고 지자체 및 국민 부담이 크게 늘어나지 않도록 재정개혁을 통해 재원을 조달하겠음.\r\n- 국민과 함께 개혁해 나가는 알뜰한 나라살림을 운용하겠음.\r\n- 재원조달은 국제기구(IMF, OECD) 권고에 따라 ‘세출절감 : 세입확대=6 : 4’에 맞춰 마련하여 국민부담을 과도하게 증가시키지 않으면서 지속가능한 복지정책을 추진토록 하겠음.\r\n- 재원확보의 우선순위 : ① 세출 구조조정, ② 조세개혁, ③ 복지행정 개혁\r\n- 무상보육 및 다양한 보육서비스 지원에 필요한 재정소요를 정확하게 추계하고, 국비와 지방비의 합리적 배분 방안을 마련하여 조달할 계획임.", :reply_cnt => 0, :good_cnt => 0, :fair_cnt => 0, :poor_cnt => 0, :created_at => "2013-09-10 17:48:56", :updated_at => "2013-09-10 17:48:56" },
  { :politician_id => 1, :title => "안전하고 지속가능한 사회", :description => "현황과 문제점\r\n- 아동 성폭력, 납치, 살해 등 아동과 여성에 대한 강력 범죄가 잇달아 발생하고 있고, 그 수단이 흉포화 되어 불안감이 고조되고 있음.\r\n- '현실불만형’ ‘사이코패스형’ ‘정신질환형’등 묻지마 범죄 등이 증가하여 일상생활에서 범죄에 대해 불안감을 느끼는 국민이 증가하고 있음.\r\n- 범죄피해 후유증으로 고통받는 희생자가 지속적으로 증가하고 있음.\r\n- 일상생활에서 성범죄, 성희롱 문제가 만연하고 있으며, 성범죄자 관리 실패 및 감시시스템의 미비로 성범죄가 계속 증가하고 있음.\r\n- 에너지소비의 97%를 수입에 전적으로 의존, 에너지소비량은 세계 8위를 차지하고 있을 정도로 에너지소비 대국\r\n- 우리나라 경제는 해외 에너지시장 위험에 항상 노출되어 세계 석유시장에 약간의 미동이 있어도 경제 전체가 요동\r\n\r\n목 표\r\n- 범죄예방을 위한 공권력의 확충과 내실화, 그리고 첨단 안전 과학기술을 적극 활용하여 범죄로부터 안전한 사회를 만듦.\r\n- 현세대뿐만 아니라 미래세대도 함께 쾌적한 환경을 향유할 수 있는 환경적으로 건전하고 지속가능발전 국가\r\n\r\n이행절차 및 이행기간\r\n- 아동성범죄 등 반인륜, 파렴치 범죄자에 대한 정보공개 확대\r\n- 성범죄자 거주지 이동 및 동선관리 시스템화로 체계적 관리\r\n- 개인 인권을 심하게 침해하지 않은 범위 내에서 방범 CCTV 설치 확대\r\n- 성범죄자 전담수형시설 설치하여 치료프로그램 강화와 맞춤형 교정 프로그램 실시\r\n- 재범률이 높은 우범자 관리 강화방안 마련\r\n- 재범 가능성이 강한 성범죄자에 대해서는 차별적으로 관리할 수 있는 법률 근거 마련\r\n- 아동 음란물 제작·유포 및 소지에 대한 엄격한 처벌 도입\r\n- 물, 공기 등 환경서비스의 품질을 선진국 수준으로 개선\r\n- 환경유해물질로부터 국민의 건강과 안전보호\r\n- 환경오염피해 실효적 구제제도 구축\r\n- 개발과 보전이 조화, 상생하는 국토관리\r\n- 지속가능하며 든든한 에너지수급 기반 구축\r\n\r\n재원조달방안\r\n- 나라 빚이 더 이상 늘지 않고 지자체 및 국민 부담이 크게 늘어나지 않도록 재정개혁을 통해 재원을 조달하겠음.\r\n- 국민과 함께 개혁해 나가는 알뜰한 나라살림을 운용하겠음.\r\n- 재원조달은 국제기구(IMF, OECD) 권고에 따라 ‘세출절감 : 세입확대=6 : 4’에 맞춰 마련하여 국민부담을 과도하게 증가시키지 않으면서 지속가능한 복지정책을 추진토록 하겠음.\r\n- 재원확보의 우선순위 : ① 세출 구조조정, ② 조세개혁, ③ 복지행정 개혁\r\n- 대부분이 법·제도 정비사항이고 재원이 소요됨.", :reply_cnt => 0, :good_cnt => 0, :fair_cnt => 0, :poor_cnt => 0, :created_at => "2013-09-10 17:49:21", :updated_at => "2013-09-10 17:49:21" },
  { :politician_id => 2, :title => "집 걱정 없는 서울, 희망둥지 프로젝트", :description => "수요자 중심의 맞춤형 임대주택정책으로 전세난 해결\r\n세입자 주거안정을 위한 <전세금보증센터> 설치, 운영\r\n재개발·재건축 과속개발 방지와 1~2인 가구 원룸텔 공급\r\n\r\n\r\n추진배경\r\n\r\n● 하우스푸어, 월세로 고통 받는 렌트푸어 등 집으로 인한 고통 심각\r\n● 2년 반 이상 지속된 전세대란으로 소득층뿐 아니라 중산층 서민까지 고통 심각\r\n● 서울시 2010년 인구주택총조사 1~2인 가구수 46.7%, 전체 가구수의 절반 육박\r\n● 가계부채 급증과 살인적인 물가 상승으로 인해 가계적자 가구가 증가\r\n\r\n\r\n세부공약\r\n\r\n● 서민·중산층에게는 장기전세주택을, 저소득층에게는 임대주택 공급을 확대\r\n  * 공공임대주택 22만호. 임기 중 6만호 추가 공급\r\n  * 다양한 임대주택 공급과 저소득층 주거안정 지원 강화\r\n     - 시유지 활용한 주택협동조합형 주택, 장기안심주택(공공계약민간임대주택),\r\n      민간소유 토지임차(SH공사) 장기임대주택, 다가구·다세대 매입주택, 기존 \r\n       임대주택 장기전세/월세전환 재임대, 주택바우처(주거지원비보조) 확대\r\n● 세입자 주거안정 제고를 위한 <전세보증금센터> 설치·운영\r\n  * 세입자 전세금 보증을 통해 이주시기 불일치로 인한 임대인과 임차인의 불편 해소 \r\n● 공공시설(용지), 대학주변 재정비지구 활용, 1~2인 가구 공공원룸텔 공급\r\n  * 인센티브 활용을 통한 소형주택 공급 유도\r\n● 재개발·재건축 과속개발 방지 및 시기 조절, 순환정비방식 도입\r\n  * 객관적이고 합리적인 주민의견 조사, 우선순위 결정을 통한 공공지원 확대\r\n  * 기반시설 공공지원 확대와 세입자 보호 등을 연계한 재정비사업의 공공성 확대", :reply_cnt => 0, :good_cnt => 0, :fair_cnt => 0, :poor_cnt => 0, :created_at => "2013-09-10 18:10:17", :updated_at => "2013-09-10 18:10:17" },
  { :politician_id => 2, :title => "지속가능한 좋은 일자리, 희망일터 프로젝트", :description => "창조적 청년벤처기업 10,000개 육성\r\n지속 가능한 좋은 일자리 육성을 위한 <사회투자기금> 조성\r\nSSM 규제 등을 통한 중소영세상인·자영업자 보호\r\n공공부문 비정규직 정규직 전환 추진\r\n\r\n\r\n추진배경\r\n\r\n● 전시성 토건사업에 밀려 좋은 일자리 창출 사업은 상대적으로 위축\r\n● 젊어서는 아르바이트, 졸업하면 비정규직인 청년 실업의 현실\r\n● 대기업의 SSM의 무분별한 확장으로 중소유통 상인과 골목 상권 생존권 위협\r\n● 노사 관계의 불안정과 불로소득으로 인한 사회양극화로 노동존중의 사회 미정착\r\n\r\n\r\n세부공약\r\n\r\n● 창조적 청년 벤처기업 10,000개 육성 및 다양한 사회적 창조직업 개발\r\n● 공공·사회서비스 일자리 및 청년 일자리 창출을 위한 <사회투자기금> 조성\r\n● 산·학·연·관 창조적인재육성위원회 설치, 기업-대학 인재연동시스템 구축\r\n● 서울소재 2년제 전문기술대학 경쟁력 강화 및 저소득층 학자금 장학지원\r\n● 서울형 마을기업·협동조합·사회적 기업 등의 육성을 통한 희망 일자리 창출\r\n● 사업조정권한의 적극적인 행사를 통한 대기업 SSM 규제 강화\r\n● 요양, 간병, 보육 등의 분야에 대한 공립 시설 확충과 종사자 근로조건 개선\r\n● 서울시 및 산하기관의 비정규직을 정규직으로 전환 추진\r\n● 서울시 사업 발주 시 고용안정 기업 우대\r\n● 비정규, 영세기업 고용안정과 복지 향상을 위하여 노동복지센터 확대 설치\r\n● 노사민정협의회 실질화와 노정협의 운영으로 노사문제 현안 해결", :reply_cnt => 0, :good_cnt => 0, :fair_cnt => 0, :poor_cnt => 0, :created_at => "2013-09-10 18:10:42", :updated_at => "2013-09-10 18:10:42" },
  { :politician_id => 2, :title => "밥, 돈, 집 걱정 없는, 희망배움터 프로젝트", :description => "초·중등학생 친환경 무상급식 실시\r\n대학생 등록금 대출 이자 지원 및 <희망하우징> 추진\r\n서울시와 금융기관 연계 <희망학자금통장> 사업 추진\r\n\r\n\r\n추진배경\r\n\r\n● 무상급식 주민투표를 통하여 나타난 서울 시민들의 소중한 판단을 존중해 초·중등학생 친환경 무상급식의 차질 없는 추진 필요\r\n● ‘미친 등록금’, ‘미친 생활비’ 등으로 학업활동에 고통 받는 대학생들이 안심하고 학업에 전념할 수 있는 환경 조성이 절실\r\n● 사교육에 점령당한 공교육, 공교육의 혁신을 통한 사교육 해소 필요\r\n\r\n\r\n세부공약\r\n\r\n● 2014년까지 서울의 95만 초·중등학생에게 무상급식 실시\r\n  * 2012년 초등5·6학년과 중1, 2013년 중2, 2014년 중3\r\n● 안전한 먹거리 확보를 위해 권역별 친환경급식통합지원센터(로컬 푸드) 설치 및 학부모 모니터링단 운영\r\n● 대학생 등록금 부담을 완화하기 위해 <서울시 학자금 이자지원 조례> 제정과 서울시립대 반값등록금 추진 및 서울장학재단 기금과 수혜자 확대\r\n● 희망하우징사업 : 다가구·다세대 매입주택, 대학내 기숙사건립 인센티브 제공 등을 활용한 대학생 주거를 지원 (현재 Youth Housing 사업 보완 및 확대)\r\n● 금융기관과 서울시가 이자를 매칭하는 <희망학자금 통장> 사업 추진\r\n  * 자녀 출산 이후 대학등록금 목돈마련을 위한 장기저축에 이자 지원\r\n● 입시 위주 교육환경 개선을 주도하는 공립형 혁신학교 확대 지원\r\n● 강·남북 차등 없는 학교시설 및 교육환경 개선을 위한 지원 확대", :reply_cnt => 0, :good_cnt => 0, :fair_cnt => 0, :poor_cnt => 0, :created_at => "2013-09-10 18:11:01", :updated_at => "2013-09-10 18:11:01" },
  { :politician_id => 2, :title => "투명 시정, 재정 혁신 꼼꼼 원순 프로젝트", :description => "서울시 부채 임기 중 30%(7조원) 감축\r\n독립된 투자평가기관 <서울공공투자관리센터> 설립\r\n투명시정 정착을 위한 정보공개, <서울정보소통센터> 설치\r\n\r\n추진배경\r\n● 한나라당 시장 시정운영 10년 만에 서울시 부채 3배 증가(6조원→ 25.5조원)\r\n● 서울시 재정파탄의 근본 원인은 무분별한 대규모 전시성 토건사업의 강행 추진\r\n● ‘불통과 독선’, ‘욕심과 겉치레’로 시민이 없는 서울시정, 부담만 남은 서울재정\r\n● 소중한 세금이 헛되이 낭비되지 않도록 기본이 바로 서는 재정혁신이 시급\r\n\r\n세부공약\r\n● 서울시 재정부채 임기 중 매년 10%씩 30%(25.5조원→18조원, 약 7조원) 감축\r\n● 독립된 투자평가기관인 <서울공공투자관리센터> 설립, 투자평가시스템 혁신\r\n● 세입-세출의 균형재정 실현을 위한 서울시 재정준칙, ‘PayGO원칙’ 도입\r\n● 시민에게 부담이 되지 않는 세외 수입 발굴과 전시성 토건사업 예산 중심에서 생활지원 사람예산 중심으로의 지출구조 개혁\r\n● SH(Seoul Housing)공사의 사업구조혁신으로 공동체 활성화와 일자리 창출을 \r\n위한 도시재생 및 주거복지의 전담기구로 역할 재정립\r\n● 서울형 시정지표 개발과 시민보고서 발간 (연간)\r\n● 시정 정책과 정보를 투명하게 공개하기 위한 <서울정보소통센터> 설치\r\n● 예산편성과정과 실행에 시민이 직접 참여할 수 있는 <주민참여예산조례> 제정과 \r\n<주민참여예산제도> 실시\r\n● 시민 참여정책의 발굴과 민원 청취를 위한 <현장경청투어> 정례화\r\n● 시‘서울시정개발연구원’을 서울시민을 고객으로 하는 연구기관으로 자율성 보장\r\n● 부정부패 척결을 위한 <청렴계약제> 내실화, <시민옴부즈맨제도> 독립성 강화\r\n● 취약계층에 대한 ‘중장기인권증진계획’ 수립과 인권감성시정 추진", :reply_cnt => 1, :good_cnt => 0, :fair_cnt => 0, :poor_cnt => 0, :created_at => "2013-09-10 18:11:22", :updated_at => "2013-09-10 18:11:22" },
  { :politician_id => 2, :title => "인재 없는 예방점검, 안전도시 프로젝트", :description => "서울시 생활안전 선언\r\n아이들이 마음껏 다닐 수 있는 공간 <아마존> 지정, 운영\r\n야간·휴일클리닉 및 응급콜 도입\r\n빗물순환시스템 도입과 녹물 수도관 교체\r\n\r\n추진배경\r\n● 어린이보호구역 제도에도 불구하고 어린이 관련 교통사고, 성범죄 지속 발생\r\n● 야간이나 휴일 의료상담과 진료에 대한 시스템 부재\r\n● 기후변화에 따른 폭우·폭설 등 자연재해에 대한 사전대응능력 미흡\r\n● 깨끗하게 생산된 수돗물을 먹지 못하는 물로 만드는 녹물 옥내배관을 이용하는 가구 수가 약 54만 8,000 가구(전체의 25%)에 이르러 가정의 건강 위협\r\n\r\n세부공약\r\n● 서울시 생활안전 선언 : 시설물· 안전 종합개선 대책, 악취·소음 등 생활 속 대기환경 개선, 불량유해식품과 농수축산물 검역 강화 등\r\n● 어린이보호구역 외 아이들이 자주 가는 지역을 <아마존>(아이들이 마음껏 다닐 수 있는 공간zone)으로 지정\r\n● 보건소를 활용해 1구 1개소의 ‘야간·휴일 클리닉’으로 활용하고, 24시간 의료상담전화 ‘응급콜’ 신설\r\n● 도시개발 시작 단계에서부터 재해로 부터의 안전을 확보하고, 상습침수·재해지역 하수관거 처리능력 우선 확대, 산사태 예·경보 시스템 도입 및 재난대응시스템 조직 강화, 빗물순환시스템 도입 \r\n    * 분산식 빗물순환시스템: 도시 전체에 빗물을 지하로 침투시키는 침투시설과 저장 후 활용하는 저류시설 등을 소규모로 분산배치. 강우 시 홍수량 감소, 평시 빗물을 활용\r\n● 녹물수도관 교체를 위한 지원 폭을 확대하고, 비용을 부담할 수 있는 가구에게는 개선을 유도할 수 있도록 조례 제정", :reply_cnt => 0, :good_cnt => 0, :fair_cnt => 0, :poor_cnt => 0, :created_at => "2013-09-10 18:11:45", :updated_at => "2013-09-10 18:11:45" }
], :without_protection => true )



Party.create([
  { :name => "무소속", :chairman_name => nil, :assembly_leader_name => nil, :founded_on => nil, :created_at => "2013-09-07 16:48:34", :updated_at => "2013-09-07 16:48:34" },
  { :name => "새누리당", :chairman_name => "황우여", :assembly_leader_name => "최경환", :founded_on => "1997-11-21", :created_at => "2013-09-07 16:48:34", :updated_at => "2013-09-07 16:48:34" },
  { :name => "민주당", :chairman_name => "김한길", :assembly_leader_name => "전병헌", :founded_on => "2011-12-16", :created_at => "2013-09-07 16:48:34", :updated_at => "2013-09-07 16:48:34" },
  { :name => "통합진보당", :chairman_name => "이정희", :assembly_leader_name => "오병윤", :founded_on => "2011-11-06", :created_at => "2013-09-07 16:48:34", :updated_at => "2013-09-07 16:48:34" },
  { :name => "정의당", :chairman_name => "천호선", :assembly_leader_name => "심상정", :founded_on => "2012-10-21", :created_at => "2013-09-07 16:48:34", :updated_at => "2013-09-07 16:48:34" }
], :without_protection => true )



Politician.create([
  { :name => "박근혜", :birthday => nil, :party_id => 2, :profile_img => "http://party.nec.go.kr/fileserver/huboja/20121219/Sd1/Sgg10000000/Hb100103014/gicho/100103014.jpg", :bg_img => "http://www.movdic.com/wordpress/wp-content/uploads/2012/07/park_120820.jpg", :created_at => "2013-09-07 13:23:31", :updated_at => "2013-09-11 13:39:45" },
  { :name => "박원순", :birthday => nil, :party_id => 3, :profile_img => "http://party.nec.go.kr/fileserver/huboja/20111026/Sd1100/Sgg3110000/Hb100025509/gicho/100025509.jpg", :bg_img => "http://blogimg.ohmynews.com/attach/6480/1374760326.jpg", :created_at => "2013-09-07 13:23:31", :updated_at => "2013-09-11 13:40:54" },
  { :name => "허남식", :birthday => nil, :party_id => 0, :profile_img => nil, :bg_img => nil, :created_at => "2013-09-07 13:23:31", :updated_at => "2013-09-07 13:23:31" },
  { :name => "김범일", :birthday => nil, :party_id => 0, :profile_img => nil, :bg_img => nil, :created_at => "2013-09-07 12:58:18", :updated_at => "2013-09-07 12:58:18" },
  { :name => "송영길", :birthday => nil, :party_id => 0, :profile_img => nil, :bg_img => nil, :created_at => "2013-09-07 13:23:31", :updated_at => "2013-09-07 13:23:31" },
  { :name => "강운태", :birthday => nil, :party_id => 0, :profile_img => nil, :bg_img => nil, :created_at => "2013-09-07 13:23:31", :updated_at => "2013-09-07 13:23:31" },
  { :name => "염홍철", :birthday => nil, :party_id => 0, :profile_img => nil, :bg_img => nil, :created_at => "2013-09-07 13:23:31", :updated_at => "2013-09-07 13:23:31" },
  { :name => "박맹우", :birthday => nil, :party_id => 0, :profile_img => nil, :bg_img => nil, :created_at => "2013-09-07 13:23:31", :updated_at => "2013-09-07 13:23:31" },
  { :name => "김문수", :birthday => nil, :party_id => 0, :profile_img => nil, :bg_img => nil, :created_at => "2013-09-07 13:23:31", :updated_at => "2013-09-07 13:23:31" },
  { :name => "최문순", :birthday => nil, :party_id => 0, :profile_img => nil, :bg_img => nil, :created_at => "2013-09-07 13:23:31", :updated_at => "2013-09-07 13:23:31" },
  { :name => "이시종", :birthday => nil, :party_id => 0, :profile_img => nil, :bg_img => nil, :created_at => "2013-09-07 13:23:31", :updated_at => "2013-09-07 13:23:31" },
  { :name => "안희정", :birthday => nil, :party_id => 0, :profile_img => nil, :bg_img => nil, :created_at => "2013-09-07 13:23:31", :updated_at => "2013-09-07 13:23:31" },
  { :name => "김완주", :birthday => nil, :party_id => 0, :profile_img => nil, :bg_img => nil, :created_at => "2013-09-07 13:23:31", :updated_at => "2013-09-07 13:23:31" },
  { :name => "박준영", :birthday => nil, :party_id => 0, :profile_img => nil, :bg_img => nil, :created_at => "2013-09-07 13:23:31", :updated_at => "2013-09-07 13:23:31" },
  { :name => "김관용", :birthday => nil, :party_id => 0, :profile_img => nil, :bg_img => nil, :created_at => "2013-09-07 13:23:31", :updated_at => "2013-09-07 13:23:31" },
  { :name => "김두관", :birthday => nil, :party_id => 0, :profile_img => nil, :bg_img => nil, :created_at => "2013-09-07 13:23:31", :updated_at => "2013-09-07 13:23:31" },
  { :name => "우근민", :birthday => nil, :party_id => 0, :profile_img => nil, :bg_img => nil, :created_at => "2013-09-07 13:23:31", :updated_at => "2013-09-07 13:23:31" }
], :without_protection => true )



Position.create([
  { :name => "대통령", :type_name => "대통령", :type_code => 1, :district => "대한민국", :politician_id => 1, :created_at => "2013-09-07 12:16:22", :updated_at => "2013-09-07 12:16:22" },
  { :name => "서울특별시장", :type_name => "광역자치단체장", :type_code => 3, :district => "서울특별시", :politician_id => 2, :created_at => "2013-09-07 12:16:22", :updated_at => "2013-09-07 12:16:22" },
  { :name => "부산광역시장", :type_name => "광역자치단체장", :type_code => 3, :district => "부산광역시", :politician_id => 3, :created_at => "2013-09-07 12:16:22", :updated_at => "2013-09-07 12:16:22" },
  { :name => "대구광역시장", :type_name => "광역자치단체장", :type_code => 3, :district => "대구광역시", :politician_id => 4, :created_at => "2013-09-07 12:18:15", :updated_at => "2013-09-07 12:18:15" },
  { :name => "인천광역시장", :type_name => "광역자치단체장", :type_code => 3, :district => "인천광역시", :politician_id => 5, :created_at => "2013-09-07 12:18:15", :updated_at => "2013-09-07 12:18:15" },
  { :name => "광주광역시장", :type_name => "광역자치단체장", :type_code => 3, :district => "광주광역시", :politician_id => 6, :created_at => "2013-09-07 12:17:56", :updated_at => "2013-09-07 12:17:56" },
  { :name => "대전광역시장", :type_name => "광역자치단체장", :type_code => 3, :district => "대전광역시", :politician_id => 7, :created_at => "2013-09-07 12:17:56", :updated_at => "2013-09-07 12:17:56" },
  { :name => "울산광역시장", :type_name => "광역자치단체장", :type_code => 3, :district => "울산광역시", :politician_id => 8, :created_at => "2013-09-07 12:17:56", :updated_at => "2013-09-07 12:17:56" },
  { :name => "경기도지사", :type_name => "광역자치단체장", :type_code => 3, :district => "경기도", :politician_id => 9, :created_at => "2013-09-07 12:17:56", :updated_at => "2013-09-07 12:17:56" },
  { :name => "강원도지사", :type_name => "광역자치단체장", :type_code => 3, :district => "강원도", :politician_id => 10, :created_at => "2013-09-07 12:17:56", :updated_at => "2013-09-07 12:17:56" },
  { :name => "충청북도지사", :type_name => "광역자치단체장", :type_code => 3, :district => "충청북도", :politician_id => 11, :created_at => "2013-09-07 12:17:56", :updated_at => "2013-09-07 12:17:56" },
  { :name => "충청남도지사", :type_name => "광역자치단체장", :type_code => 3, :district => "충청남도", :politician_id => 12, :created_at => "2013-09-07 12:17:56", :updated_at => "2013-09-07 12:17:56" },
  { :name => "전라북도지사", :type_name => "광역자치단체장", :type_code => 3, :district => "전라북도", :politician_id => 13, :created_at => "2013-09-07 12:17:56", :updated_at => "2013-09-07 12:17:56" },
  { :name => "전라남도지사", :type_name => "광역자치단체장", :type_code => 3, :district => "전라남도", :politician_id => 14, :created_at => "2013-09-07 12:17:56", :updated_at => "2013-09-07 12:17:56" },
  { :name => "경상북도지사", :type_name => "광역자치단체장", :type_code => 3, :district => "경상북도", :politician_id => 15, :created_at => "2013-09-07 12:17:56", :updated_at => "2013-09-07 12:17:56" },
  { :name => "경상남도지사", :type_name => "광역자치단체장", :type_code => 3, :district => "경상남도", :politician_id => 16, :created_at => "2013-09-07 12:17:56", :updated_at => "2013-09-07 12:17:56" },
  { :name => "제주특별자치도지사", :type_name => "광역자치단체장", :type_code => 3, :district => "제주특별자치도", :politician_id => 17, :created_at => "2013-09-07 12:17:56", :updated_at => "2013-09-07 12:17:56" }
], :without_protection => true )



Rating.create([
  { :manifesto_id => 1, :user_id => 1, :grade => 2, :created_at => "2013-09-11 09:27:19", :updated_at => "2013-09-16 00:19:55" }
], :without_protection => true )



Reply.create([
  { :manifesto_id => 1, :user_id => 1, :status => "normal", :content => "경제 민주화 되고 있나요?;;;;", :agree_cnt => 1, :disagree_cnt => 0, :created_at => "2013-09-11 10:17:09", :updated_at => "2013-09-11 10:17:09" },
  { :manifesto_id => 14, :user_id => 1, :status => "normal", :content => "시장님 화이팅입니다!", :agree_cnt => 0, :disagree_cnt => 0, :created_at => "2013-09-11 18:37:58", :updated_at => "2013-09-11 18:37:58" },
  { :manifesto_id => 3, :user_id => 2, :status => "normal", :content => "창업자 연대보증 폐지부터 어떻게 좀...", :agree_cnt => 0, :disagree_cnt => 0, :created_at => "2013-09-11 18:39:50", :updated_at => "2013-09-11 18:39:50" },
  { :manifesto_id => 3, :user_id => 1, :status => "normal", :content => "먼저 대출 중심에서 투자 중심으로 바뀌어야 하지 않을까요?", :agree_cnt => 0, :disagree_cnt => 0, :created_at => "2013-09-11 19:00:20", :updated_at => "2013-09-11 19:00:20" },
  { :manifesto_id => 2, :user_id => 1, :status => "normal", :content => "자꾸 유리지갑을 털면 어떻게 하자는 건가요?ㅡㅡ^", :agree_cnt => 0, :disagree_cnt => 0, :created_at => "2013-09-11 19:06:37", :updated_at => "2013-09-11 19:06:37" },
  { :manifesto_id => 5, :user_id => 1, :status => "normal", :content => "국정원 개혁은 어떻게 하실 생각입니까??", :agree_cnt => 0, :disagree_cnt => 0, :created_at => "2013-09-11 19:09:57", :updated_at => "2013-09-12 04:20:59" },
  { :manifesto_id => 1, :user_id => 2, :status => "normal", :content => "경제 민주화라....", :agree_cnt => 0, :disagree_cnt => 0, :created_at => "2013-09-16 03:03:21", :updated_at => "2013-09-16 03:03:21" },
  { :manifesto_id => 1, :user_id => 2, :status => "normal", :content => "상속세는?....", :agree_cnt => 0, :disagree_cnt => 0, :created_at => "2013-09-16 03:04:11", :updated_at => "2013-09-16 03:04:11" },
  { :manifesto_id => 1, :user_id => 2, :status => "normal", :content => "갈 길이 멀군요;;", :agree_cnt => 0, :disagree_cnt => 0, :created_at => "2013-09-16 03:05:44", :updated_at => "2013-09-16 03:05:44" },
  { :manifesto_id => 1, :user_id => 2, :status => "normal", :content => "과연...?", :agree_cnt => 0, :disagree_cnt => 0, :created_at => "2013-09-16 03:06:04", :updated_at => "2013-09-16 03:06:04" }
], :without_protection => true )



ReplyEvaluation.create([
  { :reply_id => 1, :user_id => 2, :eval_type => "A", :created_at => "2013-09-11 11:11:11", :updated_at => "2013-09-11 11:11:11" }
], :without_protection => true )



User.create([
  { :email => "joonsoo.kang@gmail.com", :password => "1234abcd", :encrypted_password => "$2a$10$2KYIP4na9iQayfEs69ynf.6OISZuFjJqLG97931Ij4QkNsZNUVi3a", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 1, :current_sign_in_at => "2013-09-11 13:24:22", :last_sign_in_at => "2013-09-11 13:24:22", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :created_at => "2013-09-11 13:24:22", :updated_at => "2013-09-11 13:24:22" },
  { :email => "kangjoonsoo@ktube.net", :password => "1234abcd", :encrypted_password => "$2a$10$ahEbd5S7ie20kimXVj32TuJVfualir1sFE5cQkI3n4zieWB5puxVy", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 1, :current_sign_in_at => "2013-09-12 05:09:52", :last_sign_in_at => "2013-09-12 05:09:52", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :created_at => "2013-09-12 05:09:52", :updated_at => "2013-09-12 05:09:52" }
], :without_protection => true )


