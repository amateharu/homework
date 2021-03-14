class Person
  attr_accessor :name, :surname, :notifications

  def initialize(name:, surname:)
    @name = name
    @surname = surname
    @notifications = []
  end

  def mark_as_read!
    @notifications.clear
  end
end

