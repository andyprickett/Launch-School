def grandfather_clock(&chime)
  time = Time.new(2017,2,27,0,14,35)
  puts time 

  hour = ((time.hour + 11) % 12) + 1 # ugh.

  puts "#{hour} o'clock!"
  hour.times do
    chime.call
  end

end

grandfather_clock do
  puts 'DONG!'
end
