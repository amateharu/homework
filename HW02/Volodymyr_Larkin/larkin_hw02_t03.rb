# frozen_string_literal: true

require 'time'

LOG = '2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - Calling core with action: event
2018-04-23 17:17:49.7 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
2018-04-23 17:17:49.8 ubuntu-xenial[14319] Debug - docker event processed
2018-04-23 17:18:19.5 ubuntu-xenial[14319] Debug - monitoring grid communication health
2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - Calling core with action: messages
2018-04-23 17:18:38.8 ubuntu-xenial[14319] Debug - connecting to: 10.6.246.101
2018-04-23 17:18:59.8 ubuntu-xenial[14319] Debug - inside docker_handle_event'.freeze

def coresearch(str)
  err_msg = 'Calling core with action'
  time_arr = []
  str.each_line { |x| time_arr << Time.parse(x.chomp) if x.include?(err_msg) }
  if time_arr.size == 2
    (time_arr[1] - time_arr[0]).to_s
  elsif time_arr.size > 2
    difference = []
    time_arr.size.times { |i| difference << (time_arr[i + 1] - time_arr[i]) if i < time_arr.size - 1 }
  else
    puts '0'
  end
end

puts coresearch(LOG)
