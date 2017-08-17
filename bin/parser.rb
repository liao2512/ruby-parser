require_relative '../lib/counter'

counter = Counter.new(ARGV.first)

puts "list of webpages with most page views ordered from most pages views to less page views"

counter.sort_total_visits.each do |path, counts|
  puts "#{path} #{counts} visits"
end

puts "\n"

puts "list of webpages with most unique page views also ordered"

counter.sort_unique_visits.each do |path, counts|
  puts "#{path} #{counts} visits"
end