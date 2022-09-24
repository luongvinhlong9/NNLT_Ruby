class Man
  def initialize(name, gender, weight, height, email, phone)
    @name = name
    @gender = gender
    @weight = weight
    @height = height
    @email = email
    @phone = phone
  end

  def show
    puts "Name: #{@name}\n gender: #{@gender}\n weight: #{@weight}\n height: #{@height}\n email: #{@email}\n phone: #{@phone} "
  end
end

class Student1 < Man
  attr_accessor :name, :gender, :weight, :height, :email, :phone, :school, :id, :classname
  def initialize(name, gender, weight, height, email, phone, school, id, classname)
    super(name, gender, weight, height, email, phone)
      @school = school
      @id = id
      @classname = classname

  def show
    "Name: #{@name}\n gender: #{@gender}\n weight: #{@weight}\n height: #{@height}\n email: #{@email}\n phone: #{@phone} School : #{@school}\n id : #{@id}\n className : #{@className}"
  end
end


student1 = Student1.new("Lương Vĩnh Long", "Nam", 64, 165, "luongvinhlong35@gmail.com", "0832301123","DH SPKT DN","1911505310135","19T1")

puts student1.show
