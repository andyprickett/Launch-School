birth_dates = {}
name = ''
date = ''
year = ''

puts "Please choose a name from the list:"

line = []
File.read('birth_dates.txt').each_line do |line|
  line = line.chomp.split(',')
  name = line[0]
  date = line[1].strip
  year = line[2].strip
  date_year = []
  date_year << date
  date_year << year
  puts name

  birth_dates[name] = date_year
end

puts "-----------------"
user_input = gets.chomp

birth_date = birth_dates[user_input][0].split
birth_month = birth_date[0]
birth_day = birth_date[1].to_i

birth_year = birth_dates[user_input][1].to_i

birth_time = Time.gm(birth_year,birth_month,birth_day)
now = Time.new
age = now.year - birth_year

if (birth_time.month < now.month) && (birth_time.day < now.day)
  age += 1
end

puts "#{user_input}'s next birthday is #{birth_month} #{birth_day} and " +
     "they will be #{age} years old."
