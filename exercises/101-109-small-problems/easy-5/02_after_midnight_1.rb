MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def integer_to_string(number)
#   if number < 10
#     '0' + number.to_s
#   else
#     number.to_s
#   end
# end

def time_of_day(minute_integer)
  # time_string = nil

  minute_integer = minute_integer % MINUTES_PER_DAY # handles negative values
  # if minute_integer < 0
  #   while minute_integer < 0
  #     minute_integer += MINUTES_PER_DAY
  #   end
  # end

  # if minute_integer >= MINUTES_PER_DAY
  #   while minute_integer >= MINUTES_PER_DAY
  #     minute_integer -= MINUTES_PER_DAY
  #   end
  # end
  hours, minutes = minute_integer.divmod(MINUTES_PER_HOUR)
  # hours = minute_integer / MINUTES_PER_HOUR
  # minutes = minute_integer - (hours * MINUTES_PER_HOUR)

  format('%02d:%02d', hours, minutes)
  # time_string = integer_to_string(hours) + ':' + integer_to_string(minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
p time_of_day(1440) == "00:00"
