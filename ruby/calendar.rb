# frozen_string_literal: true

require 'optparse'
require 'date'

opt = OptionParser.new
opt.on('-m', 'month')

opt.parse!(ARGV)

month = ARGV.first
if !month.nil? && month.to_i < 1 && month.to_i > 12
  puts "#{month} is neither a month number (1..12) nor a name"
  return
end

today = Date.today
month = month.to_i
month = today.month if month.to_i.zero?

first_date = Date.new(today.year, month, 1)

puts first_date.strftime('%B %Y').center(21)
puts 'Mo Tu We Th Fr Sa Su'

date_list = (first_date..first_date.next_month.prev_day).to_a

space_count = if first_date.wday.zero?
                6
              else
                first_date.wday
              end

(0..space_count - 2).each do
  print '   '
end

date_list.each do |date|
  print format('%2d ', date.day)
  print "\n" if (space_count % 7).zero?
  space_count += 1
end

print "\n"
