# frozen_string_literal: true

def howmuch(str)
  result = { letter: 0, digits: 0 }
  str.chars.each do |char|
    if char.match(/[0-9]/)
      result[:digits] += 1
    elsif char.match(/[a-zA-Z]/)
      result[:letter] += 1
    end
  end
  result
end
puts howmuch('hello333')

