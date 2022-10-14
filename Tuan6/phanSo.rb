class PhanSo
  attr_accessor :tu, :mau
  def initialize(tu, mau)
    self.tu = tu
    self.mau = mau
  end
  def show
    puts "#{tu}/#{mau}"
  end
  def cong
    puts "Cong 2 phan so: "
  end
  def tru
    puts "Tru 2 phan so: "
  end
  def nhan
    puts "Nhan 2 phan so: "
  end
  def chia
    puts "Chia 2 phan so: "
  end

end

class ToanTu < PhanSo
  attr_accessor :tu1, :mau1, :tu2, :mau2, :tu, :mau
  def initialize(tu1, mau1, tu2, mau2)
    @tu1 = tu1
    @mau1 = mau1
    @tu2 = tu2
    @mau2 = mau2
  end

  def cong
    super
    return "#{tu1*mau2 + tu2*mau1}/#{mau1*mau2}"
  end
  def tru
    super
    return "#{tu1*mau2 - tu2*mau1}/#{mau1*mau2}"
  end
  def nhan
    super
    return "#{tu1*tu2}/#{mau1*mau2}"
  end
  def chia
    super
    return "#{tu1*mau2}/ #{mau1*tu2}"
  end
end

tinh = ToanTu.new(1,3,5,6)
puts tinh.cong
puts tinh.tru
puts tinh.nhan
puts tinh.chia






