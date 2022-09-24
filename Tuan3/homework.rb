class Human
  attr_accessor :name, :hair, :weight, :height, :age, :phone, :email, :nation
  def initialize(name, hair, weight, height, age, phone, email, nation)
    @name = name
    @hair = hair
    @weight = weight
    @height = height
    @age = age
    @phone = phone
    @email = email
    @nation = nation
  end

  def show
    puts "Name: #{@name}"
    puts "Hair color: #{@hair}"
    puts "Weight: #{@weight}"
    puts "Height: #{@height}"
    puts "Age: #{@age}"
    puts "Phone Number: #{@phone}"
    puts "Email: #{@email}"
    puts "Nation: #{@nation}"
  end
end

class Student < Human
  attr_accessor :grade1, :grade2, :grade3
  def initialize name, hair, weight, height, age, phone, email, nation, grade1, grade2, grade3
      super(name, hair, weight, height, age, phone, email, nation)
      @grade1 = grade1
      @grade2 = grade2
      @grade3 = grade3
  end

  def averageGrade
    puts 'Average %.2f' % [(@grade1.to_f+@grade2.to_f+@grade3.to_f)/3]
  end

  def show
    super()
        puts ("Grade1: #{@grade1}")
        puts ("Grade2: #{@grade2}")
        puts ("Grade3: #{@grade3}")
  end
end

student1 = Student.new("Luong Vinh Long", "Black", 64, 167, 21, "1911505310135", "luongvinhlong35@gmai.com", "Viet Nam", 7 ,8 ,9)
student2 = Student.new("Nguyen Ngoc Tu","Black", 60, 165, 21, "1911505310156", "nguyenngoctu56@gmai.com", "Viet Nam", 6, 6, 10)

puts("Sinh vien: \n")
student1.show
student1.averageGrade
student2.show
student2.averageGrade

stds = [student1,student2]
stds = stds.sort_by{|index| [index.averageGrade]}
stds = stds.reverse
puts "Sap xem theo diem \n :#{stds}"
