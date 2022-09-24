class Student
  def initialize(name, id, grade1, grade2, grade3)
    @name = name
    @id = id
    @grade1 = grade1
    @grade2 = grade2
    @grade3 = grade3

  end

  def show
    "Student: #{@name} - id: #{@id}"
  end
  def average_grade
    puts 'Average grade: %.2f' % [(@grade1.to_f+@grade2.to_f+@grade3.to_f)/3]
  end
end

student1 = Student.new("Lương Vĩnh Long", "1911505310135",6,7,8)
puts student1.show
student1.average_grade()
