# frozen_string_literal: true

require_relative 'person.rb'
require_relative 'student.rb'

class Mentor < Person
  attr_accessor :student

  def initialize(name:, surname:)
    super(name: name, surname: surname)
    @student
  end

  def subscribe_to!(student)
    @student = student
    student.mentor = self
  end

  def add_homework(title:, description:, student:)
    student.notifications << "New hw #{title} was added for you by #{name}"
    homework = Homework.new(title, description)
    student.homeworks << homework
    homework
  end

  def reject_to_work!(homework)
    homework.status = 'Rejected'
    @student.notifications << "#{homework.title} was rejected"
  end

  def accept!(homework)
    homework.status = 'Accepted'
    @student.notifications << "#{homework.title} was accepted"
  end
end

