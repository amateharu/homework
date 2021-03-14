# frozen_string_literal: true

require_relative 'person.rb'

class Student < Person
  attr_reader :homeworks
  attr_accessor :mentor

  def initialize(name:, surname:)
    super(name: name, surname: surname)
    @homeworks = []
  end

  def to_work!(homework)
    homework.status = 'In progress'
    mentor.notifications << "#{name} #{surname} started work on #{homework.title} "
  end

  def add_answer!(homework, i1)
    homework.answer = i1
    homework.status = 'With answer'
  end

  def to_check!(homework)
    mentor.notifications << "please check #{name} #{surname} #{homework.title} "
    homework.status = 'Waiting for verifications'
  end
end


