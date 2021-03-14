#task 1
# frozen_string_literal: true

def met(arr)
  res = []
  arr.each do |i|
    n = 1
    while n <= i
      res << i
      n += 1
    end
  end
  res
end
print met([1, 3, 2, 4])

-------------------------
#task2

# frozen_string_literal: true

def temp(t)
  a = t.min; x1 = t - [t.min]
  b = x1.min; x2 = x1 - [x1.min]
  c = x2.min
  d = t.max; y1 = t - [t.max]
  e = y1.max; y2 = y1 - [y1.max]
  f = y2.max
  t.sort!; z = t.uniq; l = z.length / 2
  puts "Три минимальных значения: #{a},#{b},#{c}"
  puts "Три максимальных значения: #{d},#{e},#{f}"
  puts "Три средних значения: #{z[l - 1]},#{z[l]},#{z[l + 1]}"
end
temp([33, 15, 17, 20, 23, 23, 28, 40, 21, 19, 31, 18, 30, 31, 28, 23, 19, 28, 27, 30, 39, 17, 17, 20, 19, 23, 28, 30, 34, 28])

-------------------------
#task 3 
# frozen_string_literal: true

def book(books)
  sp = [books[0][:price], books[1][:price], books[2][:price], books[3][:price], books[4][:price], books[5][:price]]
  ri = []
  (0..5).each do |i|
    next unless books[i].key?(:tags)

    ri << books[i][:name] if books[i][:tags].include?('ruby')
  end
  print sp.sort
  puts ri
end
book([
       {
         name: 'Learning ruby, mysql and JavaScript',
         author: 'Robin Snow',
         price: 30,
         tags: %w[ruby javascript mysql]
       },
       {
         name: 'Ruby for the Web: Visual QuickStart Guide',
         author: 'Larry Snow',
         price: 25,
         tags: ['ruby']
       },
       {
         name: 'Ruby and MySqL for Dynamic Web Sites',
         author: 'Larry Snow',
         price: 14.39,
         tags: %w[ruby mysql]
       },
       {
         name: 'Modern Ruby: New Features and Good Practices',
         author: 'Josh Snow',
         price: 24,
         tags: ['ruby']
       },
       {
         name: 'JavaScript and JQuery: Interactive Front-End Web Development',
         author: 'Jon Snow',
         price: 20,
         tags: %w[javascript jquery]
       },
       {
         name: 'Miss Peregrine Home for Peculiar Children',
         author: 'Ransom Snow',
         price: 8.18
       }
     ]
)

-------------------------
#bonus task 1

# frozen_string_literal: true

ar = [1, 2, 3, 4, 3, 2, 1]
ar2 = [1, 100, 50, -51, 1, 1]
def artest(array)
  i = 1
  while i < array.length - 1 do
    sum1 = 0
    sum2 = 0
    array.each_with_index do |element, index|
      if index < i
        sum1 += element
      elsif index > i
        sum2 += element
      end
    end
    return i if sum1 == sum2

    i += 1
  end
  return -1
end

puts artest(ar)

-------------------------
#bonus task 2

# frozen_string_literal: true

def array(ar)
  k = {}
  ar.each do |number|
    if k.key?(number)
      k[number] += 1
    else
      k[number] = 1
    end
  end
  k.each do |key, value|
    if value == 1
      puts key
      break
    end
  end
end
array([3, 1, 5, 3, 7, 4, 1, 5, 7])
