class SinhVien
  def initialize(msv, ten)
     @sv_msv = msv
     @sv_ten = ten
  end
  def inThongTin()
     puts "Mã sinh viên #@sv_msv"
     puts "Tên sinh viên #@sv_ten"
  end
  def nhapDiem
      print "Điểm toán: "
      toan = gets
      print "Điểm lý: "
      ly = gets
      print "Điểm hoá: "
      hoa = gets
      puts 'Điểm trung bình là %.2f' % [(toan.to_f+ly.to_f+hoa.to_f)/3]
  end
end


sv1 = SinhVien.new("1911505310135", "Lương Vĩnh Long")


sv1.inThongTin()
sv1.nhapDiem
