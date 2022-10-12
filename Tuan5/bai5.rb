class Nguoi
  attr_accessor :hoTen_135, :tuoi_135, :cmnd_135

  def initialize(hoten_135, tuoi_135, cmnd_135)
    @hoTen_135 = hoten_135
    @tuoi_135 = tuoi_135
    @cmnd_135 = cmnd_135
  end

  def show
    puts "Ho ten: #{@hoTen_135}"
    puts "Tuoi: #{@tuoi_135}"
    puts "CMND: #{@cmnd_135}"
  end
end

class Phong
  attr_accessor :soNgayThue_135, :nguoiThue_135

  def initialize(soNgayThue_135, nguoiThue_135)
    @soNgayThue_135 = soNgayThue_135
    @nguoiThue_135 = nguoiThue_135
  end

  def show
    puts "So ngay thue: #{@soNgayThue_135}"
    puts "-- Thong tin nguoi thue --"
    @nguoiThue_135.show
  end
end

class PhongA < Phong
  attr_accessor :gia_135, :loaiPhong_135

  def initialize(soNgayThue_135, nguoiThue_135)
    super(soNgayThue_135, nguoiThue_135)
    @gia_135 = 500
    @loaiPhong_135 = "Loai A"
  end

  def show
    puts "Loai phong: #{@loaiPhong_135}"
    super
  end

  def tienThue
    tienThue_135 = @soNgayThue_135 * @gia_135
    puts "Tien thue: #{tienThue_135}"
  end
end

class PhongB< Phong
  attr_accessor :gia_135, :loaiPhong_135

  def initialize(soNgayThue_135, nguoiThue_135)
    super(soNgayThue_135, nguoiThue_135)
    @gia_135 = 300
    @loaiPhong_135 = "Loai B"
  end

  def show
    puts "Loai phong: #{@loaiPhong_135}"
    super
  end

  def tienThue
    tienThue_135 = @soNgayThue_135 * @gia_135
    puts "Tien thue: #{tienThue_135}"
  end
end

class PhongC < Phong
  attr_accessor :gia_135, :loaiPhong_135

  def initialize(soNgayThue_135, nguoiThue_135)
    super(soNgayThue_135, nguoiThue_135)
    @gia_135 = 100
    @loaiPhong_135 = "Loai C"
  end

  def show
    puts "Loai phong: #{@loaiPhong_135}"
    super
  end

  def tienThue
    tienThue_135 = @soNgayThue_135 * @gia_135
    puts "Tien thue: #{tienThue_135}"
  end
end

class Khachsan
  attr_accessor :listPhong

  def initialize
    nguoithue1 = Nguoi.new("Long", 21, "111111")
    nguoithue2 = Nguoi.new("Tú", 21, "222222")
    nguoithue3 = Nguoi.new("Thịnh", 21, "333333")

    phong1 = PhongA.new(2, nguoithue1)
    phong2 = PhongB.new(3, nguoithue2)
    phong3 = PhongC.new(1, nguoithue3)

    @listPhong = [phong1, phong2, phong3]
  end

  def show
    i = 1
    puts "DANH SACH PHONG"
    listPhong.each do |val|
      print i.to_s + ". "
      val.show
      puts "\n----------------"
      i += 1
    end
  end
end

KS = Khachsan.new()
KS.show
