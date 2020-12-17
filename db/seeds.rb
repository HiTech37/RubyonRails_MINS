

 email = "admina@gmail.com"

 user = User.find_by_email(email)
 if user.blank?
    @user = User.new(first_name: 'Admin', last_name: 'Admin', email: email, password: '12345678')
    if @user.save
        @user.add_role :admin
    end
 end

 # Create University 
 university = ["nthu", "ntu"]
    university.each do |uni|
       al =  University.find_by_name(uni)
       if al.blank?
            University.create(name: uni)
       end
end

ntu = University.find_by_name('ntu')
if ntu
   user = User.renew("R082411011122", ntu)
   if user
      Enrollment.renew(course_number: "10820Ocean7001", 
         score: "A-", 
         credit: 1, title: "專題討論一", 
         university_id: ntu.try(:id), 
         user_id: user.try(:id))
      Enrollment.renew(course_number: "10820Ocean7012", score: "A-", credit: 1, title: "專題討論一",university_id: ntu.try(:id), user_id: user.try(:id))
      Enrollment.renew(course_number: "10820Ocean7166", score: "B+", credit: 2, title: "實測資料分析實習",university_id: ntu.try(:id), user_id: user.try(:id))
      Enrollment.renew(course_number: "10820Ocean5001", score: "A+", credit: 1, title: "海洋地質概論", university_id: ntu.try(:id), user_id: user.try(:id))
      Enrollment.renew(course_number: "10820Ocean5037", score: "A", credit: 1, title: "物理海洋概論", university_id: ntu.try(:id), user_id: user.try(:id))
      Enrollment.renew(course_number: "10820Ocean5039", score: "B+", credit: 2, title: "物理海洋學", university_id: ntu.try(:id), user_id: user.try(:id))
   end
end

nthu = University.find_by_name('nthu')
if nthu

end





# NtuEnrollment.renew(course_number: "10820Ocean7001", student_number: "R08241101", score: "A-", credit: 1, title: "專題討論一")
# NtuEnrollment.renew(course_number: "10820Ocean7012", student_number: "R08241101", score: "B-", credit: 2, title: "理論物理海洋上")
# NtuEnrollment.renew(course_number: "10820Ocean7166", student_number: "R08241101", score: "B+", credit: 2, title: "實測資料分析實習")
# NtuEnrollment.renew(course_number: "10820Ocean5001", student_number: "R08241101", score: "A+", credit: 1, title: "海洋地質概論")
# NtuEnrollment.renew(course_number: "10820Ocean5037", student_number: "R08241101", score: "A", credit: 1, title: "物理海洋概論")
# NtuEnrollment.renew(course_number: "10820Ocean5039", student_number: "R08241101", score: "B+", credit: 2, title: "物理海洋學")
# NtuEnrollment.renew(course_number: "10810MilTr1007-02", student_number: "R08241101", score: "A", credit: 0, title: "全民國防教育軍事訓練課程－國防政策")
# NtuEnrollment.renew(course_number: "10810AdvEng3104-06", student_number: "R08241101", score: "A", credit: 3, title: "韓文一上")
# NtuEnrollment.renew(course_number: "10810Ocean7001", student_number: "R08241101", score: "A-", credit: 1, title: "專題討論一")
# NtuEnrollment.renew(course_number: "10810Ocean7082", student_number: "R08241101", score: "A-", credit: 2, title: "實測資料分析")
# NtuEnrollment.renew(course_number: "10810Ocean7089", student_number: "R08241101", score: "A-", credit: 1, title: "物理海上實習")
# NtuEnrollment.renew(course_number: "10810Ocean5019", student_number: "R08241101", score: "A-", credit: 1, title: "海洋化學概論")
# NtuEnrollment.renew(course_number: "10810Ocean5058", student_number: "R08241101", score: "A", credit: 2, title: "基礎海洋統計")




# # NtuEnrollment.renew(course_number: "10820Hist1548", student_number: "B05902110", score: "A-", credit: 2, title: "近代台灣的歷程")
# NtuEnrollment.renew(course_number: "10820CSIE4004", student_number: "B05902110", score: "B+", credit: 3, title: "前瞻資訊科技二")
# NtuEnrollment.renew(course_number: "10820CSIE5137", student_number: "B05902110", score: "C-", credit: 3, title: "網路資訊檢索與探勘")
# NtuEnrollment.renew(course_number: "10820CSIE5010", student_number: "B05902110", score: "A-", credit: 3, title: "集合論")
# NtuEnrollment.renew(course_number: "10820Write5024-02", student_number: "B05902110", score: "B+", credit: 3, title: "小故事，大世界")
# NtuEnrollment.renew(course_number: "10810Fin2005-01", student_number: "B05902110", score: "B+", credit: 3, title: "個體經濟學")
# NtuEnrollment.renew(course_number: "10810CSIE7633", student_number: "B05902110", score: "B+", credit: 3, title: "虛擬實境")
# NtuEnrollment.renew(course_number: "10810CSIE5434", student_number: "B05902110", score: "B-", credit: 3, title: "金融科技導論")
# NtuEnrollment.renew(course_number: "10720JpnL2018-42", student_number: "B05902110", score: "A-", credit: 3, title: "日文一下")
# NtuEnrollment.renew(course_number: "10720EE4037", student_number: "B05902110", score: "A-", credit: 3, title: "數位語音處理概論")
# NtuEnrollment.renew(course_number: "10720CSIE1310", student_number: "B05902110", score: "C+", credit: 1, title: "網路管理與系統管理實驗")
# NtuEnrollment.renew(course_number: "10720CSIE2311", student_number: "B05902110", score: "C+", credit: 2, title: "網路管理與系統管理")
# NtuEnrollment.renew(course_number: "10720CSIE3512-68", student_number: "B05902110", score: "A-", credit: 2, title: "專題研究")
# NtuEnrollment.renew(course_number: "10720CSIE3511-02", student_number: "B05902110", score: "A", credit: 2, title: "計算機網路實驗")
# NtuEnrollment.renew(course_number: "10720CSIE5431", student_number: "B05902110", score: "C", credit: 3, title: "深度學習之應用")
# NtuEnrollment.renew(course_number: "10710PE2075-V4", student_number: "B05902110", score: "A+", credit: 1, title: "桌球中級")
# NtuEnrollment.renew(course_number: "10710JpnL2017-42", student_number: "B05902110", score: "B-", credit: 3, title: "日文一上")
# NtuEnrollment.renew(course_number: "10710CSIE2210-01", student_number: "B05902110", score: "A", credit: 3, title: "系統程式設計")
# NtuEnrollment.renew(course_number: "10710CSIE3510-02", student_number: "B05902110", score: "B+", credit: 3, title: "計算機網路")
# NtuEnrollment.renew(course_number: "10710CSIE3110-02", student_number: "B05902110", score: "C+", credit: 3, title: "自動機與形式語言")
# NtuEnrollment.renew(course_number: "10710CSIE3340-02", student_number: "B05902110", score: "C-", credit: 3, title: "計算機結構")
# NtuEnrollment.renew(course_number: "10710CSIE1210-01", student_number: "B05902110", score: "A+", credit: 3, title: "計算機程式設計")
# NtuEnrollment.renew(course_number: "10620PE2053-D3", student_number: "B05902110", score: "A", credit: 1, title: "游泳初級")
# NtuEnrollment.renew(course_number: "10620MATH5425", student_number: "B05902110", score: "B", credit: 3, title: "密碼學導論")
# NtuEnrollment.renew(course_number: "10620ECON1005-04", student_number: "B05902110", score: "B", credit: 4, title: "經濟學原理與實習下")
# NtuEnrollment.renew(course_number: "10620CSIE2344-02", student_number: "B05902110", score: "A-", credit: 3, title: "數位系統與實驗")
# NtuEnrollment.renew(course_number: "10620CSIE2121-02", student_number: "B05902110", score: "A-", credit: 3, title: "機率")
# NtuEnrollment.renew(course_number: "10620CSIE3310-02", student_number: "B05902110", score: "C-", credit: 3, title: "作業系統")
# NtuEnrollment.renew(course_number: "10620CSIE1927", student_number: "B05902110", score: "A+", credit: 2, title: "數學之美")
# NtuEnrollment.renew(course_number: "10610PE2064-45", student_number: "B05902110", score: "A", credit: 1, title: "羽球初級")
# NtuEnrollment.renew(course_number: "10610CSIE2120-02", student_number: "B05902110", score: "A-", credit: 3, title: "線性代數")
# NtuEnrollment.renew(course_number: "10610CSIE2136-02", student_number: "B05902110", score: "B-", credit: 3, title: "演算法設計與分析")
# NtuEnrollment.renew(course_number: "10610CSIE2210-02", student_number: "B05902110", score: "F", credit: 3, title: "系統程式設計")
# NtuEnrollment.renew(course_number: "10610CSIE1923", student_number: "B05902110", score: "B-", credit: 3, title: "現代科學與心靈科學")
# NtuEnrollment.renew(course_number: "10520Hist1537", student_number: "B05902110", score: "C", credit: 2, title: "海峽兩岸關係史二")
# NtuEnrollment.renew(course_number: "10520Hist1601-02", student_number: "B05902110", score: "C+", credit: 3, title: "日本近代歷史人物")
# NtuEnrollment.renew(course_number: "10520MATH1202-03", student_number: "B05902110", score: "A", credit: 4, title: "微積分甲下")
# NtuEnrollment.renew(course_number: "10520Phys1007-16", student_number: "B05902110", score: "B-", credit: 3, title: "普通物理學甲下")
# NtuEnrollment.renew(course_number: "10520CSIE1212-02", student_number: "B05902110", score: "B-", credit: 3, title: "資料結構與演算法")
# NtuEnrollment.renew(course_number: "10520CSIE2122-01", student_number: "B05902110", score: "B", credit: 3, title: "離散數學")
# NtuEnrollment.renew(course_number: "10510PE1003-J2", student_number: "B05902110", score: "A+", credit: 1, title: "健康體適能")
# NtuEnrollment.renew(course_number: "10510CHIN1001-54", student_number: "B05902110", score: "B", credit: 3, title: "國文上")
# NtuEnrollment.renew(course_number: "10510Hist1536", student_number: "B05902110", score: "A+", credit: 2, title: "海峽兩岸關係史一")
# NtuEnrollment.renew(course_number: "10510MATH1201-03", student_number: "B05902110", score: "A-", credit: 4, title: "微積分甲上")
# NtuEnrollment.renew(course_number: "10510Phys1006-16", student_number: "B05902110", score: "A+", credit: 3, title: "普通物理學甲上")
# NtuEnrollment.renew(course_number: "10510CSIE1000-02", student_number: "B05902110", score: "B", credit: 3, title: "計算機概論")


# # NtuEnrollment.renew(course_number: "10820PE2053-B4", student_number: "B07701150", score: "A+", credit: 1, title: "游泳初級")
# NtuEnrollment.renew(course_number: "10820MATH1104", student_number: "B07701150", score: "C", credit: 4, title: "線性代數二")
# NtuEnrollment.renew(course_number: "10820MATH2214", student_number: "B07701150", score: "C-", credit: 5, title: "分析導論二")
# NtuEnrollment.renew(course_number: "10820MATH5507", student_number: "B07701150", score: "A", credit: 3, title: "數理金融導論")
# NtuEnrollment.renew(course_number: "10820ECON2021-01", student_number: "B07701150", score: "B", credit: 3, title: "總體經濟學下")
# NtuEnrollment.renew(course_number: "10820MGT2002-07", student_number: "B07701150", score: "A+", credit: 3, title: "統計學一下")
# NtuEnrollment.renew(course_number: "10820Fin2008-02", student_number: "B07701150", score: "A", credit: 3, title: "投資學")
# NtuEnrollment.renew(course_number: "10820MBA7025", student_number: "B07701150", score: "A+", credit: 3, title: "管理科學模式")
# NtuEnrollment.renew(course_number: "10820MBA5078", student_number: "B07701150", score: "A-", credit: 3, title: "物聯網下商管統計分析")
# NtuEnrollment.renew(course_number: "10810Phl1008", student_number: "B07701150", score: "A", credit: 3, title: "基本邏輯")
# NtuEnrollment.renew(course_number: "10810MATH1103", student_number: "B07701150", score: "B", credit: 4, title: "線性代數一")
# NtuEnrollment.renew(course_number: "10810MATH2213", student_number: "B07701150", score: "C-", credit: 5, title: "分析導論一")
# NtuEnrollment.renew(course_number: "10810ECON2020-01", student_number: "B07701150", score: "B-", credit: 3, title: "總體經濟學上")
# NtuEnrollment.renew(course_number: "10810MGT2001-07", student_number: "B07701150", score: "A+", credit: 3, title: "統計學一上")
# NtuEnrollment.renew(course_number: "10810BA2009", student_number: "B07701150", score: "A+", credit: 3, title: "民法概要")
# NtuEnrollment.renew(course_number: "10810BA2006", student_number: "B07701150", score: "A", credit: 3, title: "組織行為學")
# NtuEnrollment.renew(course_number: "10810Acc5046", student_number: "B07701150", score: "B+", credit: 3, title: "策略性財務分析")
# NtuEnrollment.renew(course_number: "10810Fin7035", student_number: "B07701150", score: "A-", credit: 3, title: "商業賽局模型一")
# NtuEnrollment.renew(course_number: "10720MATH1202-09", student_number: "B07701150", score: "B", credit: 4, title: "微積分甲下")
# NtuEnrollment.renew(course_number: "10720ECON1005-01", student_number: "B07701150", score: "C+", credit: 4, title: "經濟學原理與實習下")
# NtuEnrollment.renew(course_number: "10720MGT1004-01", student_number: "B07701150", score: "B+", credit: 3, title: "會計學甲一下")
# NtuEnrollment.renew(course_number: "10720BA1010", student_number: "B07701150", score: "B+", credit: 3, title: "企業管理")
# NtuEnrollment.renew(course_number: "10720HBCS7022", student_number: "B07701150", score: "A+", credit: 1, title: "網路心理學實務與應用")
# NtuEnrollment.renew(course_number: "10720CSX4001", student_number: "B07701150", score: "A-", credit: 3, title: "資料科學程式設計")
# NtuEnrollment.renew(course_number: "10720Write5020-01", student_number: "B07701150", score: "A", credit: 3, title: "英語演說與溝通技巧")
# NtuEnrollment.renew(course_number: "10710PE1003-96", student_number: "B07701150", score: "A", credit: 1, title: "健康體適能")
# NtuEnrollment.renew(course_number: "10710AdvEng3107-01", student_number: "B07701150", score: "A", credit: 3, title: "泰文一上")
# NtuEnrollment.renew(course_number: "10710CHIN1081-44", student_number: "B07701150", score: "B", credit: 3, title: "大學國文一")
# NtuEnrollment.renew(course_number: "10710MATH1201-09", student_number: "B07701150", score: "A-", credit: 4, title: "微積分甲上")
# NtuEnrollment.renew(course_number: "10710ECON1004-04", student_number: "B07701150", score: "A-", credit: 4, title: "經濟學原理與實習上")
# NtuEnrollment.renew(course_number: "10710MGT1003-01", student_number: "B07701150", score: "A+", credit: 3, title: "會計學甲一上")



# # NthuEnrollment.renew(course_number: "10720GE 163700", student_number: "104010019", score: "C-", credit: 2, title: "The Philosophy of Life in Zhuangzi", rank: 41, total_enrollment: 49)
# NthuEnrollment.renew(course_number: "10720LANG200005", student_number: "104010019", score: "B", credit: 2, title: "Vocabulary Building", rank: 24, total_enrollment: 32)
# NthuEnrollment.renew(course_number: "10720PHYS326000", student_number: "104010019", score: "A", credit: 3, title: "Thermal and Statistical Physics II", rank: 12, total_enrollment: 30)
# NthuEnrollment.renew(course_number: "10720PHYS485000", student_number: "104010019", score: "A", credit: 3, title: "Introduction to Neurophysics", rank: 7, total_enrollment: 28)
# NthuEnrollment.renew(course_number: "10720ZZ 000000", student_number: "104010019", score: "A", credit: 0, title: "Conduct", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10710GE 103600", student_number: "104010019", score: "A+", credit: 2, title: "Chinese Music Introduction", rank: 1, total_enrollment: 70)
# NthuEnrollment.renew(course_number: "10710GE 118500", student_number: "104010019", score: "C+", credit: 2, title: "Personal Crisis Prevention", rank: 70, total_enrollment: 74)
# NthuEnrollment.renew(course_number: "10710HSS 220000", student_number: "104010019", score: "B+", credit: 3, title: "Logic", rank: 19, total_enrollment: 49)
# NthuEnrollment.renew(course_number: "10710LANG103057", student_number: "104010019", score: "B+", credit: 2, title: "Upper-Intermediate English III：Listening and Speaking", rank: 9, total_enrollment: 16)
# NthuEnrollment.renew(course_number: "10710LANG104010", student_number: "104010019", score: "B+", credit: 2, title: "Fundamentals of English", rank: 16, total_enrollment: 21)
# NthuEnrollment.renew(course_number: "10710MATH481000", student_number: "104010019", score: "C", credit: 3, title: "Numerical Analysis I", rank: 25, total_enrollment: 48)
# NthuEnrollment.renew(course_number: "10710PE 205014", student_number: "104010019", score: "A-", credit: 0, title: "Exercise walking and jogging", rank: 21, total_enrollment: 40)
# NthuEnrollment.renew(course_number: "10710PHYS325000", student_number: "104010019", score: "B+", credit: 3, title: "Thermal and Statistical Physics I", rank: 34, total_enrollment: 99)
# NthuEnrollment.renew(course_number: "10710ZZ 000000", student_number: "104010019", score: "A", credit: 0, title: "Conduct", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10620CL 102015", student_number: "104010019", score: "A-", credit: 2, title: "College Chinese", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10620CS 531400", student_number: "104010019", score: "A", credit: 3, title: "Randomized Algorithms", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10620GEC 120101", student_number: "104010019", score: "A-", credit: 2, title: "Contemporary Biology and Your Life", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10620MATH242000", student_number: "104010019", score: "B+", credit: 3, title: "Algebra II", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10620MATH305000", student_number: "104010019", score: "C+", credit: 4, title: "Complex Analysis", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10620PHYS346000", student_number: "104010019", score: "C", credit: 3, title: "Quantum Physics (II)", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10620PHYS524500", student_number: "104010019", score: "B+", credit: 3, title: "Quantum Computing", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10620ZZ 000000", student_number: "104010019", score: "A", credit: 0, title: "Conduct", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10610CS 542200", student_number: "104010019", score: "B", credit: 3, title: "Parallel Programming", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10610CS 565100", student_number: "104010019", score: "E", credit: 3, title: "Machine Learning", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10610CS 631200", student_number: "104010019", score: "C", credit: 3, title: "Parallel Algorithm Design", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10610MATH301000", student_number: "104010019", score: "C", credit: 3, title: "Differential Equations", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10610MATH331000", student_number: "104010019", score: "A-", credit: 3, title: "Advanced Linear Algebra", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10610MATH361000", student_number: "104010019", score: "C", credit: 3, title: "Geometry I", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10610MATH381000", student_number: "104010019", score: "B", credit: 3, title: "Introduction to Dynamical Systems", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10610PE 205025", student_number: "104010019", score: "B", credit: 0, title: "Swimming(advance)", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10610PHYS345000", student_number: "104010019", score: "B", credit: 3, title: "Quantum Physics (I)", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10610ZZ 000000", student_number: "104010019", score: "A", credit: 0, title: "Conduct", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10520CS 531100", student_number: "104010019", score: "A+", credit: 1, title: "Advanced Data Structure", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10520GEC 140202", student_number: "104010019", score: "A-", credit: 3, title: "Social and cultural Analysis", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10520MATH180000", student_number: "104010019", score: "A", credit: 1, title: "Elementary Introduction to Modern Mathematics", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10520MATH202001", student_number: "104010019", score: "B+", credit: 4, title: "Advanced Calculus II", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10520MATH287000", student_number: "104010019", score: "A+", credit: 3, title: "Discrete Mathematics", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10520MATH351000", student_number: "104010019", score: "A-", credit: 3, title: "Introduction to Topology", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10520PE 206009", student_number: "104010019", score: "B+", credit: 0, title: "Weight Training", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10520WW 524300", student_number: "104010019", score: "A-", credit: 3, title: "Graph Theory", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10520ZZ 000000", student_number: "104010019", score: "A", credit: 0, title: "Conduct", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10510CS 343300", student_number: "104010019", score: "A+", credit: 3, title: "Competitive Programming Training", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10510CS 431101", student_number: "104010019", score: "B", credit: 3, title: "Design and Analysis of Algorithms", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10510GEC 160100", student_number: "104010019", score: "B+", credit: 2, title: "Selections from the Poetry of Li Bai and Du Fu", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10510ISA 536200", student_number: "104010019", score: "A", credit: 3, title: "Game theory and its Applications", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10510MATH201001", student_number: "104010019", score: "B", credit: 4, title: "Advanced Calculus I", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10510MATH241000", student_number: "104010019", score: "C", credit: 3, title: "Algebra I", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10510MATH281000", student_number: "104010019", score: "B-", credit: 3, title: "Probability Theory", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10510PE 205051", student_number: "104010019", score: "A+", credit: 0, title: "Ironman Triathlon", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10510WW 524900", student_number: "104010019", score: "B+", credit: 3, title: "computational number theory", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10510ZZ 000000", student_number: "104010019", score: "A", credit: 0, title: "Conduct", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10420ESS 105000", student_number: "104010019", score: "A-", credit: 2, title: "Introduction to Energy and Environment", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10420ESS 250001", student_number: "104010019", score: "C-", credit: 3, title: "Introduction to Materials Science I", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10420GEC 110600", student_number: "104010019", score: "C", credit: 3, title: "Knowledge and Reality", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10420LANG102016", student_number: "104010019", score: "B+", credit: 2, title: "English II", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10420MATH102002", student_number: "104010019", score: "B", credit: 4, title: "Calculus II", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10420MATH142000", student_number: "104010019", score: "A-", credit: 3, title: "Linear Algebra II", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10420PE 112020", student_number: "104010019", score: "A+", credit: 0, title: "Exercise walking and jogging", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10420PHYS102017", student_number: "104010019", score: "A+", credit: 1, title: "General Physics Laboratory (II)", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10420PHYS114402", student_number: "104010019", score: "A+", credit: 4, title: "General Physics A (II)", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10420PHYS211000", student_number: "104010019", score: "A+", credit: 3, title: "Applied Mathematics (I)", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10420ZY 100042", student_number: "104010019", score: "A+", credit: 0, title: "Service Learning", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10420ZZ 000000", student_number: "104010019", score: "A", credit: 0, title: "Conduct", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10410CHEM103010", student_number: "104010019", score: "A", credit: 1, title: "General Chemistry Laboratory (I)", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10410ESS 202002", student_number: "104010019", score: "B", credit: 3, title: "Programming Languages", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10410GE 140500", student_number: "104010019", score: "A", credit: 2, title: "Industry Innovation and Career development", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10410LANG101016", student_number: "104010019", score: "B-", credit: 2, title: "English I", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10410MATH141000", student_number: "104010019", score: "B-", credit: 3, title: "Linear Algebra I", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10410PE 111009", student_number: "104010019", score: "A+", credit: 0, title: "Physical Education", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10410PHYS101017", student_number: "104010019", score: "A-", credit: 1, title: "General Physics Laboratory (I)", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10410PHYS113402", student_number: "104010019", score: "B+", credit: 4, title: "General Physics A (I)", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10410PHYS212000", student_number: "104010019", score: "D", credit: 3, title: "Applied Mathematics (II)", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10410PHYS245000", student_number: "104010019", score: "C-", credit: 3, title: "Introduction to Modern Physics", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10410ZY 100140", student_number: "104010019", score: "A+", credit: 0, title: "Service Learning", rank: nil, total_enrollment: nil)
# NthuEnrollment.renew(course_number: "10410ZZ 000000", student_number: "104010019", score: "A", credit: 0, title: "Conduct", rank: nil, total_enrollment: nil)

