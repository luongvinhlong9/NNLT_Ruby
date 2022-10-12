class ThiSinh
  attr_accessor :soBaoDanh_135, :hoTen_135, :diaChi_135, :mucUuTien_135
  def initialize soBaoDanh_135, hoTen_135, diaChi_135, mucUuTien_135
      @soBaoDanh_135 = soBaoDanh_135
      @hoTen_135 = hoTen_135
      @diaChi_135 = diaChi_135
      @mucUuTien_135 = mucUuTien_135
  end
  def show
      puts ("Số báo danh: #{@soBaoDanh_135}")
      puts ("Tên: #{@hoTen_135}")
      puts ("Địa chỉ: #{@diaChi_135}")
      puts ("Mức độ ưu tiên: #{@mucUuTien_135}")
  end
end
class ThiSinhKA < ThiSinh
  attr_accessor :toan_135, :ly_135, :hoa_135
  def initialize soBaoDanh_135, hoTen_135, diaChi_135, mucUuTien_135, toan_135, ly_135, hoa_135
      super soBaoDanh_135, hoTen_135, diaChi_135, mucUuTien_135
      @toan_135 = toan_135
      @ly_135 = ly_135
      @hoa_135 = hoa_135
  end
  def show
      super
      puts ("Điểm toán: #{@toan_135}")
      puts ("Điểm lý: #{@ly_135}")
      puts ("Điểm hóa: #{@hoa_135}")
  end
end
class ThiSinhKB < ThiSinh
  attr_accessor :toan_135, :hoa_135, :sinh_135
  def initialize soBaoDanh_135, hoTen_135, diaChi_135, mucUuTien_135, toan_135, hoa_135, sinh_135
      super soBaoDanh_135, hoTen_135, diaChi_135, mucUuTien_135
      @toan_135 = toan_135
      @hoa_135 = hoa_135
      @sinh_135 = sinh_135
  end
  def show
      super
      puts ("Điểm toán: #{@toan_135}")
      puts ("Điểm hóa: #{@hoa_135}")
      puts ("Điểm sinh: #{@sinh_135}")
  end
end
class ThiSinhKC < ThiSinh
  attr_accessor :van_135, :su_135, :dia_135
  def initialize  soBaoDanh_135, hoTen_135, diaChi_135, mucUuTien_135, van_135, su_135, dia_135
      super soBaoDanh_135, hoTen_135, diaChi_135, mucUuTien_135
      @van_135 = van_135
      @su_135 = su_135
      @dia_135 = dia_135
  end
  def show
      super
      puts ("Điểm văn: #{@van_135}")
      puts ("Điểm sử: #{@su_135}")
      puts ("Điểm địa: #{@dia_135}")
  end
end
class TuyenSinh
  @@thiSinh = Array.new
  def addCandidate(thiSinh)
      @@thiSinh.push(thiSinh)
  end
  def timkiemtheoSobaodanh(id)
      searchList = @@thiSinh .select { |o| o.soBaoDanh_135 == id}
      searchList.each{ |sl| sl.show}
  end
  def showts()
      @@thiSinh.each{ |thiSinh| thiSinh.show}
  end
end
qlTuyenSinh = TuyenSinh.new()
tsA = ThiSinhKA.new(1,"Lương Vĩnh Long", "A", "A", 9,9,9)
tsB = ThiSinhKB.new(2,"Nguyễn Ngọc Tú", "B", "B", 7,7,7 )
tsC = ThiSinhKC.new(3, "Huỳnh Văn Thịnh", "C", "C", 5,5,5)

qlTuyenSinh.addCandidate(tsA)
qlTuyenSinh.addCandidate(tsB)
qlTuyenSinh.addCandidate(tsC)
qlTuyenSinh.showts()
puts "<---------*******-------->"
puts "Kết quả tìm kiếm"
qlTuyenSinh.timkiemtheoSobaodanh(2)
