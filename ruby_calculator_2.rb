def choose_numbers_power(first_number, second_number)
  return (first_number ** second_number)
end

def square_root(number)
  return (Math.sqrt(number))
end

def addition_numbers(first_number, second_number)
  return (first_number + second_number)
end

def subtraction_numbers(first_number, second_number)
  return (first_number - second_number)
end

def multiplication_numbers(first_number, second_number)
  return (first_number * second_number)
end

def division_numbers(first_number, second_number)
  return (first_number / second_number)
end

def bmi_numbers_metric(weight, height)
  return (weight / (height**2)).round(2)
end

def bmi_numbers_imperial(weight, height)
  return ((weight / (height**2))*703).round(2)
end 

def mortgage_calculation(principal, interest_rate, number_of_payments)
  return (principal * ((interest_rate * ((1 + interest_rate) **number_of_payments)) / (((1+interest_rate)**number_of_payments)-1))).round(2)
end

def trip_calc_length(distance, speed)
  return (distance / speed)
end

# def trip_calc_cost(distance, fuel efficiency, cost per gallon, speed)
#   return 
# end


puts "welcome to the calculator, please select which calculator you would like to use. Type (a) for the advanced calculator, (b) for basic calculator, (c) for the bmi calculator, (d) for the mortgage calculator or (e) for the trip calculator?"
  calculator_type = gets.chomp


    if calculator_type == 'a'
      puts "would you like to choose to find a square root (s) or a power of (p)?"
        advanced_type = gets.chomp
          case advanced_type
          when 's'
            puts "what is the number that you want to find the square root of?"
            number = gets.to_i
              puts square_root(number)
          when 'p'
            puts "what is the first number?"
            first_number = gets.to_i
            puts "to the power of which number?" 
            second_number = gets.to_i
              puts choose_numbers_power(first_number, second_number)
          end


    elsif calculator_type == 'b'
      puts "would you like to choose to add (+), subtract (-), multiply (*) or divide (/)"
        basic_type = gets.chomp
          case basic_type
          when '+'
            puts "what is the first number?"
            first_number = gets.to_i
            puts "plus which number?" 
            second_number = gets.to_i
              puts addition_numbers(first_number, second_number)
          when '-'
            puts "what is the first number?"
            first_number = gets.to_i
            puts "minus which number?" 
            second_number = gets.to_i
              puts subtraction_numbers(first_number, second_number)
          when '*'
            puts "what is the first number?"
            first_number = gets.to_i
            puts "times which number?" 
            second_number = gets.to_i
              puts multiplication_numbers(first_number, second_number)
          when '/'
            puts "what is the first number?"
            first_number = gets.to_i
            puts "divided by which number?" 
            second_number = gets.to_i
              puts division_numbers(first_number, second_number)
    end


    elsif calculator_type == 'c'
      puts "would you like to use the imperial system (i) or the metric system (m)?"
        bmi_type = gets.chomp
        case bmi_type
        when 'i'
          puts "what is your weight in pounds?"
          weight = gets.to_f
          puts "what is your height in inches?"
          height = gets.to_f
            puts bmi_numbers_imperial(weight, height)
        when 'm'
          puts "what is your weight in kilograms?"
          weight = gets.to_f
          puts "what is your height in metres?"
          height = gets.to_f
            puts bmi_numbers_metric(weight, height)
    end

    elsif calculator_type == 'd'
      puts "please enter your principal amount"
        principal = gets.to_f
      puts "please enter your interest rate"
        interest_rate = gets.to_f
      puts "please enter your number of payments"
        number_of_payments = gets.to_f
          puts mortgage_calculation(principal, interest_rate, number_of_payments)
    end

    elsif calculator_type == 'e'
      puts "please enter your total distance in miles"
        distance = gets.to_f
      puts "please enter your average speed in miles per hour (just the number)"
        speed = gets.to_f
      puts "please enter your fuel efficiency in miles per gallon (just the number"
        fuel_efficiency = gets.to_f
      puts "please enter the cost per gallon of the fuel that you are using in cents"
        cost_per_gallon = gets.to_f
           puts trip_calc_length(distance, speed)
    end

