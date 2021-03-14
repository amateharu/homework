require_relative 'lib/student'
require_relative 'lib/mentor'
require_relative 'lib/homework'
require_relative 'lib/notification'

student = Student.new(name: 'John', surname: 'Doe')
mentor = Mentor.new(name: 'Jack', surname: 'Gonsales')

homework = mentor.add_homework(title: 'HW03',
                               description: 'description homework',
                               student: student)

student.notifications
student.mark_as_read!
mentor.subscribe_to!(student)
student.homeworks
student.to_work!(homework)
student.homeworks
mentor.notifications
mentor.mark_as_read!
mentor.notifications
student.homeworks
student.add_answer!(homework, 'new students answer')
student.to_check!(homework)
mentor.notifications
mentor.reject_to_work!(homework)
student.notifications
student.add_answer!(homework, 'new students answer_after reject')
student.to_check!(homework)
mentor.accept!(homework)

student.notifications

