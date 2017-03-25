def prompt(message)
  Kernel.puts("=>  #{message}")
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def invalid_input?(input)
  input.empty?() || input.to_f() <= 0.0 || !valid_number?(input)
end

def get_validated_input(type)
  input = ''
  loop do
    yield
    input = Kernel.gets().chomp()
    # - validate
    if invalid_input?(input)
      prompt("Please enter a valid number greater than zero...")
    else
      prompt("Ok, there's the #{type}.")
      break(input)
    end
  end
end

prompt("Welcome to mortgage calculator!")

loop do
  # get loan amount
  loan_amt = get_validated_input('loan amount') do
    prompt("What is the loan amount?")
  end

  # get apr
  apr = get_validated_input('APR') do
    prompt("What is the APR? (use 5 for 5%, 2.5 for 2.5%)")
  end

  # get loan duration
  duration_years = get_validated_input('loan duration') do
    prompt("What is the loan duration? (in years)")
  end

  # calculate monthly interest rate
  monthly_rate = (apr.to_f() / 12) / 100
  # calculate loan duration in months
  duration_months = duration_years.to_i() * 12

  # calculate monthly payment
  monthly_payment = loan_amt.to_f() *
                    (monthly_rate /
                    (1 - (1 + monthly_rate)**(duration_months * -1)))

  # output monthly payment
  prompt("The monthly payment is $#{format('%.2f', monthly_payment)}.")

  prompt("Would you like to calculate another loan?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase == 'y'
  prompt("Ok, let's start another...")
end

prompt("Thanks. Goodbye.")
