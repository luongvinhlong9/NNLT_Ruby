#Lương Vĩnh Long _ MSV: 1911505310135
class PhuongTien
  attr_accessor :id135, :hangSanXuat135, :namSanXuat135, :dongXe135, :giaBan135, :bienSo135, :mauXe135
  def initialize(id135, hangSanXuat135, namSanXuat135, dongXe135, giaBan135, bienSo135, mauXe135)
    @id135 = id135
    @hangSanXuat135 = hangSanXuat135
    @namSanXuat135 = namSanXuat135
    @dongXe135 = dongXe135
    @giaBan135 = giaBan135
    @bienSo135 = bienSo135
    @mauXe135 = mauXe135
  end

  def show
    put "id: #{@id135}"
    put "Hãng: #{@hangSanXuat135}"
    put "Năm sản xuất: #{@namSanXuat135}"
    put "Dòng xe: #{@dongXe135}"
    put "Giá bán: #{@giaBan135}"
    put "Biển số: #{@bienSo135}"
    put "Màu xe: #{@mauXe135}"
  end
end

class Oto < PhuongTien
  attr_accessor :soChoNgoi135, :kieuDongCo135, :nhienLieu135, :soTuiKhi135, :ngayDangKiem135
  def initialize(id135, hangSanXuat135, namSanXuat135, dongXe135, giaBan135, bienSo135, mauXe135, soChoNgoi135, kieuDongCo135, nhienLieu135, soTuiKhi135, ngayDangKiem135)
    super(id135, hangSanXuat135, namSanXuat135, dongXe135, giaBan135, bienSo135, mauXe135)
    @soChoNgoi135 = soChoNgoi135
    @kieuDongCo135 = kieuDongCo135
    @nhienLieu135 = nhienLieu135
    @soTuiKhi135 = soTuiKhi135
    @ngayDangKiem135 = ngayDangKiem135
  end

  def show
    super
    put "Số chỗ ngồi: #{@soChoNgoi135}"
    put "Kiểu động cơ: #{@kieuDongCo135}"
    put "Nhiên liệu: #{@nhienLieu135}"
    put "Số túi khí: #{@soTuiKhi135}"
    put "Ngày đăng kiểm: #{@ngayDangKiem135}"
  end

end

class XeMay < PhuongTien
  attr_accessor :congSuat135, :dungTichBinh135
  def initialize(id135, hangSanXuat135, namSanXuat135, dongXe135, giaBan135, bienSo135, mauXe135, congSuat135, dungTichBinh135)
    super(id135, hangSanXuat135, namSanXuat135, dongXe135, giaBan135, bienSo135, mauXe135)
    @congSuat135 = congSuat135
    @dungTichBinh135 = dungTichBinh135
  end

  def show
    super
    put "Công suất: #{@congSuat135}"
    put "Dung tích bình: #{@dungTichBinh135}"
  end

end

class XeTai < PhuongTien
  attr_accessor :trongTai135
  def initialize(id135, hangSanXuat135, namSanXuat135, dongXe135, giaBan135, bienSo135, mauXe135, trongTai135)
    super(id135, hangSanXuat135, namSanXuat135, dongXe135, giaBan135, bienSo135, mauXe135)
    @trongTai135 = trongTai135
  end

  def show
    super
    put "Trọng tải: #{@trongTai135}"
  end

end

class QLPTGT
  @danhSachOto135 = []
  @danhSachXeMay135 = []
  @danhSachXeTai135 = []
  def them
    puts "Chọn phương tiện\n 1: Oto\n 2: Xe máy\n 3:Xe tải"
    @phuongTien135 = gets
    case @phuongTien135
    when 1
      puts "id: "
      @id135 = gets
      puts "Hãng sản xuất: "
      @hangSanXuat135 = gets
      puts "Năm sản xuất: "
      @namSanXuat135 = gets
      puts "Dòng xe: "
      @dongXe135 = gets
      puts "Gía bán: "
      @giaBan135 = gets
      puts "Biển số: "
      @bienSo135 = gets
      puts "Màu xe: "
      @mauXe135 = gets
      puts "Số chỗ ngồi: "
      @soChoNgoi135 = gets
      puts "Kiểu động cơ: "
      @kieuDongCo135 = gets
      puts "Số túi khí: "
      @soTuiKhi135 = gets
      puts "Ngày đăng kiểm: "
      @ngayDangKiem135 = gets
      @oto = Oto.new(@id135, @hangSanXuat135, @namSanXuat135, @dongXe135, @giaBan135, @bienSo135, @mauXe135, @soChoNgoi135, @kieuDongCo135, @nhienLieu135, @soTuiKhi135, @ngayDangKiem135)
      @danhSachOto135.push(@oto)
    when 2
      puts "id: "
      @id135 = gets
      puts "Hãng sản xuất: "
      @hangSanXuat135 = gets
      puts "Năm sản xuất: "
      @namSanXuat135 = gets
      puts "Dòng xe: "
      @dongXe135 = gets
      puts "Gía bán: "
      @giaBan135 = gets
      puts "Biển số: "
      @bienSo135 = gets
      puts "Màu xe: "
      @mauXe135 = gets
      puts "Công suất: "
      @congSuat135 = gets
      puts "Dung tích bình: "
      @dungTichBinh135 = gets
      @xeMay = XeMay.new(@id135, @hangSanXuat135, @namSanXuat135, @dongXe135, @giaBan135, @bienSo135, @mauXe135, @congSuat135, @dungTichBinh135)
      @danhSachXeMay135.push(@xeMay)
    when 2
      puts "id: "
      @id135 = gets
      puts "Hãng sản xuất: "
      @hangSanXuat135 = gets
      puts "Năm sản xuất: "
      @namSanXuat135 = gets
      puts "Dòng xe: "
      @dongXe135 = gets
      puts "Gía bán: "
      @giaBan135 = gets
      puts "Biển số: "
      @bienSo135 = gets
      puts "Màu xe: "
      @mauXe135 = gets
      puts "Trọng tải: "
      @trongTai135 = gets
      @xeTai = XeTai.new(@id135, @hangSanXuat135, @namSanXuat135, @dongXe135, @giaBan135, @bienSo135, @mauXe135, @trongTai135)
      @danhSachXeTai135.push(@xeTai)
    end
  end

  def show
    @danhSachOto135.each do |val|
      val.show
    end
    @danhSachXeMay135.each do |val|
      val.show
    end
    @danhSachXeTai135.each do |val|
      val.show
    end
  end

  def xoaTheoID
    puts "Nhap id"
    @id135 = gets
    @danhSachOto135.each do |val|
      if val.id135 == id135
        @danhSachOto135.delete_at(val)
      end
    end
    @danhSachXeMay135.each do |val|
      if val.id135 == id135
        @danhSachXeMay135.delete_at(val)
      end
    end
    @danhSachXeTai135.each do |val|
      if val.id135 == id135
        @danhSachXeTai135.delete_at(val)
      end
    end
  end

  def timTheoThongTin
    #Một hãng xe có thể sản xuất nhiều loại xe
    puts "Nhập hãng sản xuất"
    @hangSanXuat135 = gets
    puts "Nhập màu"
    @mauXe135 = gets
    puts "Nhập biển số"
    @bienSo135 = gets
    @danhSachOto135.each do |val|
      if val.hangSanXuat135 == @hangSanXuat135 && val.mauXe135 == @mauXe135 && val.bienSo135 == @bienSo135
        val.show
      end
    end
    @danhSachXeMay135.each do |val|
      if val.hangSanXuat135 == @hangSanXuat135 && val.mauXe135 == @mauXe135 && val.bienSo135 == @bienSo135
        val.show
      end
    end
    @danhSachXeTai135.each do |val|
      if val.hangSanXuat135 == @hangSanXuat135 && val.mauXe135 == @mauXe135 && val.bienSo135 == @bienSo135
        val.show
      end
    end
  end
end


