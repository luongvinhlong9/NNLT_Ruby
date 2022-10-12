class TaiLieu
  attr_accessor :maTaiLieu_135, :tenNXB_135, :soBanPhatHanh_135
  def initialize maTaiLieu_135, tenNXB_135, soBanPhatHanh_135
      @maTaiLieu_135 = maTaiLieu_135
      @tenNXB_135 = tenNXB_135
      @soBanPhatHanh_135 = soBanPhatHanh_135
  end
  def display
      puts "Mã tài liệu #@maTaiLieu_135"
      puts "Tên NXB #@tenNXB_135"
      puts "Số bản phát hành #@soBanPhatHanh_135"
  end
end
class Sach < TaiLieu
  attr_accessor :tenTacGia_135, :soTrang_135
  def initialize maTaiLieu_135, tenNXB_135, soBanPhatHanh_135, tenTacGia_135, soTrang_135
      super maTaiLieu_135, tenNXB_135, soBanPhatHanh_135
      @tenTacGia_135 = tenTacGia_135
      @soTrang_135 = soTrang_135
  end
  def display
      super
      puts "Tên tác giả #@tenTacGia_135"
      puts "Số trang #@soTrang_135"
  end
end
class TapChi < TaiLieu
  attr_accessor :soPhatHanh_135, :thangPhatHanh_135
  def initialize maTaiLieu_135, tenNXB_135, soBanPhatHanh_135, soPhatHanh_135, thangPhatHanh_135
      super maTaiLieu_135, tenNXB_135, soBanPhatHanh_135
      @soPhatHanh_135 = soPhatHanh_135
      @thangPhatHanh_135 = thangPhatHanh_135
  end
  def display
      super
      puts "Số phát hành #@soPhatHanh_135"
      puts "Tháng phát hành #@thangPhatHanh_135"
  end
end
class Bao < TaiLieu
  attr_accessor :ngayPhatHanh_135
  def initialize maTaiLieu_135, tenNXB_135, soBanPhatHanh_135, ngayPhatHanh_135
      super maTaiLieu_135, tenNXB_135, soBanPhatHanh_135
      @ngayPhatHanh_135 = ngayPhatHanh_135
  end
  def display
      super
      puts "Ngày phát hành #@ngayPhatHanh_135"
  end
end
class QuanLySach
  @@qlsach=Array.new
  def addBook(qlsach)
      @@qlsach.push(qlsach)
  end
  def deleteById (id)
      deleteList = @@qlsach.delete_if {|x| x.maTaiLieu_135.chomp.eql?id}
      puts "Xoá thành công"
      puts "<---------******---------->"
  end
  def showListInforBook()
      @@qlsach.each {|qlsach| qlsach.display}
      puts ("<---------******---------->")
  end
  def timKiemNhaXuatBan(key)
      searchList = @@qlsach .select {|o| o.tenNXB_135 == key}
      searchList.each{|sl| sl.display}
      puts "<---------******---------->"
  end
end
class Main
  dem = 0
  quanLy = QuanLySach.new()
  until dem == 1 do
      puts "5. xoa"
      puts "4. in danh sach"
      puts "3. tim kiem theo nhà xuất bản"
      puts "2. them"
      puts "1. thoat"
      dem=gets
      if dem.to_i ==1
          exit
      end
      if dem.to_i == 2
          sach = Sach.new(1, "NXB Giáo dục", 100, "Kim Đồng", 200)
          tapChi = TapChi.new(2, "NXB Trẻ", 200, "AH123", "4/2022")
          bao = Bao.new(3, "NXB An Nam", 150, "3/2021")
          quanLy.addBook(sach)
          quanLy.addBook(tapChi)
          quanLy.addBook(bao)
          puts "Thêm thành công"
          puts "<---------******---------->"
      end
      if dem.to_i == 3
          puts "NXB cần tìm là"
          NXBCT_135 = gets.chomp.to_s
          quanLy.timKiemNhaXuatBan(NXBCT_135)
      end
          if dem.to_i == 4
          puts "====DS Sách===="
          quanLy.showListInforBook()
      end
      if dem.to_i == 5
          puts ("ID can xoa la")
          iDCanXoa_135 = gets.chomp.to_s
          quanLy.deleteById(iDCanXoa_135)
      end
  end
end
