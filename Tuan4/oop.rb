class CanBo
  attr_accessor :hoTen, :tuoi, :gioiTinh, :diaChi
  def initialize(hoTen, tuoi, gioiTinh, diaChi)
    @hoTen = hoTen
    @tuoi = tuoi
    @gioiTinh = gioiTinh
    @diaChi = diaChi
  end
end
# Xây dựng các lớp CongNhan, KySu, NhanVien kế thừa từ lớp CanBo.

class CongNhan < CanBo
  attr_accessor :capBac
  def initialize(hoTen, tuoi, gioiTinh, diaChi, capBac)
    super(hoTen, tuoi, gioiTinh, diaChi)
    @capBac = capBac
  end
  def show
    super()
    "Tên: #{@hoTen} Tuổi: #{@tuoi} Giới tính: #{@gioiTinh} Địa chỉ: #{@diaChi} Cấp bậc: #{@capBac}"
  end
end

class KySu < CanBo
  attr_accessor :nganhDaoTao
  def initialize(hoTen, tuoi, gioiTinh, diaChi, nganhDaoTao)
    super(hoTen, tuoi, gioiTinh, diaChi)
    @nganhDaoTao = nganhDaoTao
  end
  def show
    super()
    "Tên: #{@hoTen} Tuổi: #{@tuoi} Giới tính: #{@gioiTinh} Địa chỉ: #{@diaChi} Ngành đào tạo: #{@nganhDaoTao}"
  end
end

class NhanVien < CanBo
  attr_accessor :congViec
  def initialize(hoTen, tuoi, gioiTinh, diaChi, congViec)
    super(hoTen, tuoi, gioiTinh, diaChi)
    @congViec = congViec
  end
  def show
    super()
    "Tên: #{@hoTen} Tuổi: #{@tuoi} Giới tính: #{@gioiTinh} Địa chỉ: #{@diaChi} Công việc: #{@congViec}"
  end
end

class QLCB
  def themMoi(array)
    puts "Nhập họ tên, tuổi, giới tính, địa chỉ cán bộ"
    hoTen = gets
    tuoi = gets
    gioiTinh = gets
    diaChi = gets
    canbo = CanBo.new(hoTen, tuoi, gioiTinh, diaChi)
    array.push(canbo)
  end
  def timKiem(array)
    puts "Nhập từ khóa"
    keywork = gets
    for i in array
      if keywork == i.name
        puts "True"
      end
    end
  end
  def hienDanhSach(array)
    for i in array
      puts "Tên: #{@i.name} Tuổi: #{@i.tuoi} Giới tính: #{@i.gioiTinh} Địa chỉ: #{@i.diaChi}"
    end
  end
  def menu(array)
    selection = 1
    while selection <1 || selection >3
      puts "1: Thêm mới cán bộ\n2:Tìm kiếm theo họ tên\n3:Hiện thị thông tin về danh sách các cán bộ\n4:Thoát khỏi chương trình."
      selection = gets
      case selection
      when 1
        themMoi(array)
      when 2
        timKiem(array)
      when 3
        hienDanhSach(array)
      else

      end
    end
  end
end

array = []
quanLy = QLCB.new()
quanLy.menu(array)

