#task 1

text1='Hello'
text2='World'
puts text1+(' ')+text2

#task 2

text = 'hello'
puts(text[0], text[1], text[-1])

#task 3

a = gets.chomp
case a.to_i
when 0...5
    puts("Вiрно")
else
    puts("Не вiрно")
end

#task 4

min = gets.chomp
case min.to_i
    when 0..15
    puts("Першa")
    when 15..30
    puts("Друга")
    when 30..45
    puts("Третя")
    when 45..60
    puts("Четверта")
else
    puts("Невiрне значення")
end

#task 5

year = gets.chomp
year=year.to_i
if year % 4==0 && year % 100 !=0 || year % 400==0
    puts("Високоский")
else
    puts("Не високосний")
end

#task 6 

a=gets.chomp
s1=a[0].to_i+a[1].to_i+a[2].to_i
s2=a[3].to_i+a[4].to_i+a[5].to_i
if s1==s2
    puts("Так")
else
    puts("Hi")
end

#bonus task 

str1 = gets.chomp
str2 = gets.chomp
str1.each_byte do |s1|
    str2.each_byte do |s2|
         s1, s2 = s1.to_s.upcase[/^[A-Z]+$/], s2.to_s.upcase[/^[A-Z]+$/]
    s1&.sum == s2&.sum
       if s1 == s2
        puts ("Equal")
       else
           puts ("Not equal")
       end
    end
end

