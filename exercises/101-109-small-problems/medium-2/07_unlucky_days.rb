require 'date'

def friday_13th(year)
  friday_13ths = 0
  calendar = Date.new(year).gregorian
  12.times do 
    friday_13ths += 1 if calendar.next_day(12).friday?
    calendar = calendar.next_month
  end
  friday_13ths
end

def five_fridays(year)
  calendar = Date.new(year).gregorian
  five_friday_months = 0
  12.times do |month|
    fridays = 0
    while calendar.month == month + 1
      fridays +=1 if calendar.friday?
      calendar = calendar.next_day
    end
    five_friday_months += 1 if fridays == 5
  end
  five_friday_months
end

# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2

p five_fridays(1987)
p five_fridays(1984)
p five_fridays(2016) == 5

