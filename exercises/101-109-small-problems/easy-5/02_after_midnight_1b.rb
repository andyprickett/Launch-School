HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
SECONDS_PER_MINUTE = 60
DAY_OF_WEEK = { 0 => 'Sunday', 1 => 'Monday', 2 => 'Tuesday', 3 => 'Wednesday',
                4 => 'Thursday', 5 => 'Friday', 6 => 'Saturday' }

def time_of_day(offset_minutes)
  time_now = Time.now
  time = Time.new(time_now.year, time_now.month, time_now.day)
  until time.sunday?
    time += (SECONDS_PER_MINUTE * MINUTES_PER_HOUR * HOURS_PER_DAY)
  end

  time += (offset_minutes * SECONDS_PER_MINUTE)

  day = DAY_OF_WEEK[time.wday]
  format(day + ' ' + '%02d:%02d', time.hour, time.min)
end

# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"
# p time_of_day(1440) == "00:00"

p time_of_day(-3) #== "Sunday 00:00"
p time_of_day(-1440)
p time_of_day(1440)
p time_of_day(-1443)
