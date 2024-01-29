while true
  puts "Choose Between +,-,/,*, write 'exit' to stop "
  sign = gets.chomp
  #break loop if user type 'exit'
  break if sign.downcase == "exit"

  #case on sign variable + - / *
  case sign
    #if sign == + then actions
    when "+"
      puts "Enter two numbers"
      #get input from user
      num1 = gets.chomp
      num2 = gets.chomp

      #check num1 have . or not, then typecast accordingly to float / int
      if num1.include? "."
        num1 = num1.to_f
      else
        num1 = num1.to_i
      end

      #check num2 have . or not, then typecast accordingly to float / int
      if num2.include? "."
        num2 = num2.to_f
      else
        num2 = num2.to_i
      end

      #prints the + results
      puts "#{num1} + #{num2} = #{num1+num2}"

    #if sign is - then actions
    when "-"
      puts "Enter two numbers"
      #get input from user
      num1 = gets.chomp
      num2 = gets.chomp

      #check num1 have . or not, then typecast accordingly to float / int
      if num1.include? "."
        num1 = num1.to_f
      else
        num1 = num1.to_i
      end

      #check num2 have . or not, then typecast accordingly to float / int
      if num2.include? "."
        num2 = num2.to_f
      else
        num2 = num2.to_i
      end

      #prints the + results
      puts "#{num1} - #{num2} = #{num1-num2}"

    #if sign is * then actions
    when "*"
      puts "Enter two numbers"
      num1 = gets.chomp
      num2 = gets.chomp

      #check num1 have . or not, then typecast accordingly to float / int
      if num1.include? "."
        num1 = num1.to_f
      else
        num1 = num1.to_i
      end

      #check num2 have . or not, then typecast accordingly to float / int
      if num2.include? "."
        num2 = num2.to_f
      else
        num2 = num2.to_i
      end

      #prints the + results
      puts "#{num1} * #{num2} = #{num1*num2}"

    #if sign is / then actions
    when "/"
      puts "Enter Dividend"
      num1 = gets.chomp
      puts "Enter Divisor"
      num2 = gets.chomp

      #check num1 have . or not, then typecast accordingly to float / int
      if num1.include? "."
        num1 = num1.to_f
      else
        num1= num1.to_i
      end

      #check num2 have . or not, then typecast accordingly to float / int
      if num2.include? "."
        num2 = num2.to_f
      else
        num2 = num2.to_i
      end

      begin
        res = num1/num2
        #prints the + results
        puts "#{num1} / #{num2} = #{res.round(2)}"
      #check zerodivision exception and handle it
      rescue ZeroDivisionError => e
        puts e
      end

    #if user selected wrong symbol
    else
      puts "Choose correct symbol"
  end
end
