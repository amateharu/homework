# frozen_string_literal: true

class Homework
  attr_accessor :title, :description, :student, :mentor, :status

  def initialize(title, description, student, mentor, status=:assigned)
    @title = title
    @description = description
    @student = student
    @mentor = mentor
    @status = status
  end

  def change_status(status, sender, recipient)
    @status = status
    notification = Notification.new("Status of homework #{title} changed to:#{status}", recipient, sender)
    puts 'Congratulations!' if status == :accepted
  end

end

