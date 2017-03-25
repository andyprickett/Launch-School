# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(which_message)
  MESSAGES[LANGUAGE][which_message]
end

def prompt(full_message)
  Kernel.puts("=> #{full_message}")
end

def integer?(input)
  # input.to_i() != 0 || input == '0'
  # input.to_i.to_s == input
  # /^\d+$/.match(input)
  Integer(input) rescue(false)
end

def float?(input)
  # input.to_f.to_s == input
  # /\d/.match(input) && /^\d*\.?\d*$/.match(input)
  Float(input) rescue(false)
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  word = case op
  when '1'
    messages('operation_add')
  when '2'
    messages('operation_sub')
  when '3'
    messages('operation_mul')
  when '4'
    messages('operation_div')
  end
  blah = 'whatever'
  word
end

prompt(messages('welcome'))

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages('valid_name'))
  else
    break
  end
end

prompt(messages('name_greeting') + "#{name}!")

loop do # main loop
  number1 = ''
  number2 = ''
  operator = ''

  loop do
    prompt(messages('first_number'))
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(messages('valid_number_error'))
    end
  end

  loop do
    prompt(messages('second_number'))
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(messages('valid_number_error'))
    end
  end

  prompt(messages('operator_prompt'))
  prompt(messages('operator_add'))
  prompt(messages('operator_sub'))
  prompt(messages('operator_mul'))
  prompt(messages('operator_div'))

  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('operator_err'))
    end
  end

  prompt("#{operation_to_message(operator)} #{messages('operation_suffix')}")

  result = case operator
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("#{messages('result')} #{result}.")

  prompt(messages('again'))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(messages('goodbye'))
