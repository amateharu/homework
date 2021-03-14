#task 1

a = "var_test_text"
a.gsub!('_t', 'T')
puts a

#task 2

var ="ФЫВА олдж"
var.split(" ")
puts var[0..3].reverse+" "+var[5..8].reverse

#task 3

a = [342, 55, 33, 123, 66, 63, 9].map(&:to_s)
for i in a
    if i.include?("3")
        puts i
    end
end

#task 4

a = [342, 55, 33, 123, 66, 63, 9]
str=a.join
str1=str.each_char.map(&:to_i)
count = 0
for i in str1 do
    if i == 3
        count+=1
    end
end
puts count

#bonus task 1

def nameband(name)
    if name[0] == name[-1]
    puts name.capitalize!+name[1..-1]
    else
puts "The "+name.capitalize!
    end
end
nameband("europe")

#bonus task 2

ar = "ATTGC"
ad = ar.split("")
ad.collect! do |element|
    case element
    when "A"
        "T"
    when "G"
        "C"
    when "T"
        "A"
    when "C"
        "G"
    else
      element
    end
  end
  print ad.join