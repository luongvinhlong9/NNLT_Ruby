class CanBo
  attr_accessor :hoTen135, :tuoi135, :gioiTinh135, :diaChi135
  def initialize(hoTen135, tuoi135, gioiTinh135, diaChi135)
    @hoTen135 = hoTen135
    @tuoi135 = tuoi135
    @gioiTinh135 = gioiTinh135
    @diaChi135 = diaChi135
  end
end
# Xây dựng các lớp CongNhan, KySu, NhanVien kế thừa từ lớp CanBo.

class CongNhan < CanBo
  attr_accessor :capBac135
  def initialize(hoTen135, tuoi135, gioiTinh135, diaChi135, capBac135)
    super(hoTen135, tuoi135, gioiTinh135, diaChi135)
    @capBac135 = capBac135
  end
  def show
    super()
    "Tên: #{@hoTen135} Tuổi: #{@tuoi135} Giới tính: #{@gioiTinh135} Địa chỉ: #{@diaChi135} Cấp bậc: #{@capBac135}"
  end
end

class KySu < CanBo
  attr_accessor :nganhDaoTao135
  def initialize(hoTen135, tuoi135, gioiTinh135, diaChi135, nganhDaoTao135)
    super(hoTen135, tuoi135, gioiTinh135, diaChi135)
    @nganhDaoTao135 = nganhDaoTao135
  end
  def show
    super()
    "Tên: #{@hoTen135} Tuổi: #{@tuoi135} Giới tính: #{@gioiTinh135} Địa chỉ: #{@diaChi135} Ngành đào tạo: #{@nganhDaoTao135}"
  end
end

class NhanVien < CanBo
  attr_accessor :congViec135
  def initialize(hoTen135, tuoi135, gioiTinh135, diaChi135, congViec135)
    super(hoTen135, tuoi135, gioiTinh135, diaChi135)
    @congViec135 = congViec135
  end
  def show
    super()
    "Tên: #{@hoTen135} Tuổi: #{@tuoi135} Giới tính: #{@gioiTinh135} Địa chỉ: #{@diaChi135} Công việc: #{@congViec135}"
  end
end

class QLCB
  def themMoi(array135)
    puts "Nhập họ tên, tuổi, giới tính, địa chỉ cán bộ"
    hoTen135 = gets
    tuoi135 = gets
    gioiTinh135 = gets
    diaChi135 = gets
    canbo = CanBo.new(hoTen135, tuoi135, gioiTinh135, diaChi135)
    array135.push(canbo)
  end
  def timKiem(array135)
    puts "Nhập từ khóa"
    keywork135 = gets
    for i in array135
      if keywork135 == i.name
        puts "True"
      end
    end
  end
  def hienDanhSach(array135)
    for i in array135
      puts "Tên: #{@i.name} Tuổi: #{@i.tuoi135} Giới tính: #{@i.gioiTinh135} Địa chỉ: #{@i.diaChi135}"
    end
  end
  def menu(array135)
    selection135 = 1
    while selection135 <1 || selection135 >3
      puts "1: Thêm mới cán bộ\n2:Tìm kiếm theo họ tên\n3:Hiện thị thông tin về danh sách các cán bộ\n4:Thoát khỏi chương trình."
      selection135 = gets
      case selection135
      when 1
        themMoi(array135)
      when 2
        timKiem(array135)
      when 3
        hienDanhSach(array135)
      else

      end
    end
  end
end

array135 = []
quanLy = QLCB.new()
quanLy.menu(array135)

