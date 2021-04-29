=begin
Write your code for the 'Grade School' exercise in this file. Make the tests in
`grade_school_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grade-school` directory.
=end

class School
  attr_accessor :students

  def initialize
    @students = {}
  end

  def students(grade)
    @students[grade].nil? ? [] : @students[grade].sort
  end

  def add(name, grade)
    if @students[grade].nil?
      @students[grade] = [name]
    else
      @students[grade] << name
    end
  end

  def students_by_grade
    return [] if @students.empty?
    a = []
    Hash[@students.sort].each do |key, value|
      a << {:grade => key, :students => value.sort}
    end 
    a
  end
  
end


