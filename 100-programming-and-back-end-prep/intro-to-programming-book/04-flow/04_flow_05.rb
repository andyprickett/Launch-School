puts "Please enter a number between 0 and 100"
number = gets.chomp.to_i

def check_number(number)
  if number >= 0
    if number <= 50
      puts "Your number is between 0 and 50"
    elsif number <= 100
      puts "Your number is between 51 and 100"
    else
      puts "Your number is above 100, try again!"
    end
  else
    puts "Your number is negative, try again!"
  end
end

def check_number_case1(number)
  case 
  when number < 0
    puts "#{number} is negative, try again!"
  when number <= 50
    puts "#{number} is between 0 and 50"
  when number <= 100
    puts "#{number} is between 51 and 100"
  else
    puts "#{number} is above 100, try again!"
  end
end

def check_number_case2(number)
  case number
  when 0..50
    puts "#{number} is between 0 and 50"
  when 51..100
    puts "#{number} is between 51 and 100"
  else
    if number < 0
      puts "#{number} is negative, try again!"
    else
      puts "#{number} is above 100, try again!"
    end
  end
end


check_number(number)
check_number_case1(number)
check_number_case2(number)