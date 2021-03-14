# frozen_string_literal: true

TEXT = '10.6.246.103 - - [23/Apr/2018:20:30:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0498
10.6.246.101 - - [23/Apr/2018:20:30:42 +0300] "POST /test/2/run HTTP/1.1" 200 - 0.2277
2018-04-23 20:30:42: SSL ERROR, peer: 10.6.246.101, peer cert: , #<Puma::MiniSSL::SSL: System error: Undefined error: 0 - 0>
10.6.246.101 - - [23/Apr/2018:20:31:39 +0300] "POST /test/2/messages HTTP/1.1" 200 48 0.0290'

IP_REGEX = %r{^(?<ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) - - \[(?<datetime>.*)\] "\w+\s(?<link>/.*)\s.*"}.freeze
def infosearch(text)
  arr = []
  output = 0
  text.split("\n").each do |e|
    item = IP_REGEX.match(e)
    next if item.nil?

    date = item.named_captures['datetime']
    ip = item.named_captures['ip']
    link = item.named_captures['link'].upcase
    arr[output] = "#{date} FROM: #{ip} TO: #{link}"
    output += 1
  end
  arr
end
puts infosearch(TEXT)
