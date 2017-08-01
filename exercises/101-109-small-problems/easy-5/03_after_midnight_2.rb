require 'Date'

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR
TIME = Date.today.to_time

def after_midnight(time_string)
  # time_string = time_string.split(':').map(&:to_i)
  # hours = time_string[0] % HOURS_PER_DAY
  # minutes = (hours * MINUTES_PER_HOUR) + time_string[1]
  # OR
  # hours, minutes = time_string.split(':').map(&:to_i)
  # (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
  # OR ???
  hours, minutes = time_string.split(':').map(&:to_i)
  TIME.min + (((hours * MINUTES_PER_HOUR) % MINUTES_PER_DAY) + minutes)
end

def before_midnight(time_string)
  # time_string = time_string.split(':').map(&:to_i)
  # hours = time_string[0] % HOURS_PER_DAY
  # minutes = (MINUTES_PER_DAY - ((hours * 60) + time_string[1])) % MINUTES_PER_DAY
  # OR
  minutes = MINUTES_PER_DAY - after_midnight(time_string)
  minutes = 0 if minutes == MINUTES_PER_DAY
  minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
