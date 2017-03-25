def prompt(message)
  Kernel.puts("=> #{message}")
end

def not_valid_number?(num)
  num.empty?() || num.to_f().zero? || num.to_f < 0
end

def calculate_interest(apr, loan_years)
  # Convert annual percentage rate to monthly
  monthly_int = (apr.to_f / 100) / 12

  # Convert loan years to months
  loan_months = loan_years.to_i * 12

  # Calculate adjustment portion of equation
  one_plus_monthly_neg_squared = (1 + monthly_int)**-loan_months

  # Calculate/return interest
  monthly_int / (1 - one_plus_monthly_neg_squared)
end

prompt("Welcome to Mortgage Calculator!")

prompt("OK, let's get started.")

loop do # main loop
  loan_amount = ''
  loop do
    prompt("What's the loan amount?")
    prompt("(No dollar sign or comma necessary...)")
    loan_amount = Kernel.gets().chomp()
    if not_valid_number?(loan_amount)
      prompt("Hey there, please enter a positive number!")
    else
      break
    end
  end
  apr = ''
  loop do
    prompt("What's the annual percentage rate?")
    prompt("(No percent sign, just a simple decimal number...)")
    apr = Kernel.gets().chomp()
    if not_valid_number?(apr)
      prompt("Hey there, please enter a valid number!")
    else
      break
    end
  end
  loan_years = ''
  loop do
    prompt("What's the loan duration?")
    prompt("(How many years?...)")
    loan_years = Kernel.gets().chomp()
    if not_valid_number?(loan_years)
      prompt("Hey there, please enter a valid number!")
    else
      break
    end
  end

  prompt("Let me do some calculating...")

  # Call method to calculate interest
  interest = calculate_interest(apr, loan_years)

  # Calculate full equation/monthly payment
  monthly_payment = loan_amount.to_f * interest

  # Round answer to hundreths place
  monthly_payment_rounded = monthly_payment.round(2)

  prompt("The monthly payment would be $" + monthly_payment_rounded.to_s + ".")
  prompt("Do you want to perform another calculation?")
  prompt("(Y to go again...)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for using the Mortgage Calculator. Goodbye!")
