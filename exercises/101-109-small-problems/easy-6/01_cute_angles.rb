DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(angle)
  # degrees, mins_secs_percent = angle.divmod(1)
  # mins_secs = (mins_secs_percent * MINUTES_PER_DEGREE).round(2)
  # minutes, secs_percent = mins_secs.divmod(1)
  # seconds = (secs_percent * SECONDS_PER_MINUTE).round(2)
  # minutes = format('%02d', minutes)
  # seconds = format('%02d', seconds)
  # "%(#{degrees}#{DEGREE}#{minutes}\'#{seconds}\")"
  # OR
  # total_seconds = (angle * SECONDS_PER_DEGREE).round
  # degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  # minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  # format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
  # OR
  total_seconds = (angle * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.abs.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  if total_seconds < 0
    degrees *= -1
  end
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

puts dms(30) #== %(30°00'00")
puts dms(-30) #== %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(-76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(-254.6) #== %(254°36'00")
puts dms(93.034773) #== %(93°02'05")
puts dms(-93.034773) #== %(93°02'05")
puts dms(0) #== %(0°00'00")
puts dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")
puts dms(-360) #== %(360°00'00") || dms(360) == %(0°00'00")
puts dms(540.284375)
puts dms(-540.284375)
