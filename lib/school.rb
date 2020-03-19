require "pry"

class School
  attr_accessor :roster

  def initialize(school_name)
    @name = school_name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = [] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster
    sorted = {}
    @roster.each do |grade, student|
      sorted[grade] = student.sort
    end
    sorted
  end
end
