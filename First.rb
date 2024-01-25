while true
puts "Choose Between +,-,/,*, write 'exit' to stop "
sign = gets.chomp
break if sign.downcase == "exit"
case sign
when "+"
  puts "Enter two numbers"
    num1 = gets.chomp
    num2 = gets.chomp

    if num1.include? "."
      num1 = num1.to_f
    else
      num1 = num1.to_i
    end

    if num2.include? "."
      num2 = num2.to_f
    else
      num2 = num2.to_i
    end
    puts "#{num1} + #{num2} = #{num1+num2}"
when "-"
    puts "Enter two numbers"
    num1 = gets.chomp
    num2 = gets.chomp

    if num1.include? "."
      num1 = num1.to_f
    else
      num1 = num1.to_i
    end

    if num2.include? "."
      num2 = num2.to_f
    else
      num2 = num2.to_i
    end
    puts "#{num1} - #{num2} = #{num1-num2}"
when "*"
    puts "Enter two numbers"
    num1 = gets.chomp
    num2 = gets.chomp

    if num1.include? "."
      num1 = num1.to_f
    else
      num1 = num1.to_i
    end

    if num2.include? "."
      num2 = num2.to_f
    else
      num2 = num2.to_i
    end
    puts "#{num1} * #{num2} = #{num1*num2}"
when "/"
    puts "Enter Dividend"
    num1 = gets.chomp
    puts "Enter Divisor"
    num2 = gets.chomp

    if num1.include? "."
      num1 = num1.to_f
    end

    if num2.include? "."
      num2 = num2.to_f
    end
    res = (num1.to_f) / (num2.to_f)

    puts "#{num1} / #{num2} = #{res.round(2)}"
else
    puts "Choose correct symbol"
end

end

# rubocop:enable Style/StringLiterals
