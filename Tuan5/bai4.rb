class Nguoi
  attr_accessor :name_135, :age_135, :work_135, :cmnd_135
  def initialize name_135, age_135, work_135, cmnd_135
      @name_135 = name_135
      @age_135 = age_135
      @work_135 = work_135
      @cmnd_135 = cmnd_135
  end
  def initialize
  end
  def enter_infomation
      print "Tên : "
      @name_135 = gets.chomp
      print "Tuổi : "
      @age_135 = gets.to_i
      print "Nghê nghiêp: "
      @work_135 = gets.chomp
      print "CMND : "
      @cmnd_135 = gets.to_i
  end
  def info
      puts "Tên : #{@name_135}"
      puts "Tuối : #{@age_135}"
      puts "Nghê nghiệp : #{@work_135}"
      puts "Chứng minh nhân dân #{@cmnd_135}"
  end
end

class HoGiaDinh < Nguoi
  attr_accessor :home_135, :member_135, :members_135
  def initialize name_135, age_135, work_135, cmnd_135, home_135, member_135, members_135
      super name_135, age_135, work_135, cmnd_135
      @home_135 = home_135
      @member_135 = member_135
      @members_135 = members_135
  end
  def initialize
  end
  def enter_infomation
      @members_135 = []
      print "Nhập số nhà: "
      @home_135 = gets.chomp
      print "Nhập số thành viên : "
      @member_135 = gets.to_i
      for i in (0..@member_135 - 1) do
          puts "====Nhập thành viên thứ #{i+1}===="
          member1_135 = Nguoi.new
          member1_135.enter_infomation
          @members_135 << member1_135
      end
  end

  def info
      puts "Số nhà : #{@home_135}"
      puts "Số thành viên : #{@member_135}"
      i =1
      @members_135.each do |member_135|
          puts "===thông tin thành viên thứ #{i}==="
          member_135.info
          i = i+1
      end
  end
end
class KhuPho
  def initialize
  end
  $hogiadinhs_135 = []
  def addHoGiaDinh
      print "Nhập số hộ gia đình : "
      @soluong_135 = gets.to_i
      for i in (0..@soluong_135 - 1) do
          puts "=====Nhập hộ gia đình thứ #{i+1}======"
          hogiadinh_135 = HoGiaDinh.new
          hogiadinh_135.enter_infomation
          $hogiadinhs_135 << hogiadinh_135
      end
  end

  def infomatinon
      i = 1
      puts "============Thong tin Khu phố ================"
      $hogiadinhs_135.each do |hogiadinh_135|
          puts "=====Thông tin hộ gia đình thứ #{i}======"
          hogiadinh_135.info
          i = i+1
      end
  end

end

khupho_135 = KhuPho.new
khupho_135.addHoGiaDinh
khupho_135.infomatinon
