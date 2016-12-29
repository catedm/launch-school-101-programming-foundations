# mortgage loan calculator

def prompt(message)
  puts "=> #{message}"
end

loop do
  prompt("Welcome to Car Loan Calculator! Enter your name:")

  name = ''
  loop do
    name = gets.chomp

    if name.empty?
      prompt("Please enter a valid name.")
    else
      break
    end
  end

  prompt("Hello #{name}! Please enter your principal loan amount: ")

  amount = ''
  loop do
    amount = gets.chomp

    if amount.empty? || amount.to_f < 0
      prompt("Number must be greater than zero")
    else
      break
    end
  end

  prompt("Excellent! Now please enter your Annual Percentage Rate (APR): ")

  apr_annual = ''
  loop do
    apr_annual = gets.chomp

    if apr_annual.empty? || apr_annual.to_f < 0
      prompt("Number must be greater than zero")
    else
      break
    end
  end

  prompt("Great! Now please enter your loan duration in years: ")

  years = ''
  loop do
    years = gets.chomp

    if years.empty? || years.to_i < 0
      prompt("Number must be greater than zero")
    else
      break
    end
  end

  annual_interest_rate = apr_annual.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i * 12

  monthly_payment = amount.to_f() *
                      (monthly_interest_rate /
                      (1 - (1 + monthly_interest_rate)**-months.to_i()))

  prompt("Your monthly payment is: $#{format('%02.2f', monthly_payment)}")

  prompt("Another calculation?")
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the Mortgage Calculator!")
prompt("Good bye!")
