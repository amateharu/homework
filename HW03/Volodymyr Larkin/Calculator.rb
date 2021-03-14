class Sum
  def execute(x, y)
    x + y
  end
end

class Sub
  def execute(x, y)
    x - y
  end
end

class Degree
  def execute(x, y)
    x**y
  end
end

class Calculator
  def initialize(num)
    @num = num
    @commands = {}
  end

  def add_command(operator, command)
    @commands[operator] = command
  end

  def compute(operator, operand)
    command = @commands[operator]
    prev_num = @num
    @num = command.execute(prev_num, operand)
    puts "#{prev_num} #{operator} #{operand} = #{@num} => result = #{@num}"
  end
end

calc = Calculator.new(1)
calc.add_command('+', Sum.new)
result = calc.compute('+', 5)

