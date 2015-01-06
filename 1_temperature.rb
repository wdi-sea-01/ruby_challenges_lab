def f_to_c f
    (f - 32) * 5 / 9
end

def c_to_f c
    (c * 9/5) + 32
end

def try_again
    puts "Would you like to convert another temperature? (enter 'y' or 'n')"
    if(gets.chomp.downcase == 'y')
        convert
    else
        puts "Goodbye!"
    end
end

def convert
    puts "Type '1' to convert from Celsius to Fahrenheit OR type '2' to convert from Fahrenheit to Celsius"
    type = gets.chomp.to_i
    case type
    when 1
        puts "Enter Celsius Temperature:"
        c_in = gets.chomp.to_f 
        f_out = c_to_f c_in
        puts "#{c_in} degrees Celisus is equal to #{f_out} degrees Fahrenheit"
        try_again
    when 2
        puts "Enter Fahrenheit Temperature:"
        f_in = gets.chomp.to_f 
        c_out = f_to_c f_in
        puts "#{f_in} degrees Fahrenheit is equal to #{c_out} degrees Celsius"        
        try_again
    else
        puts "Invalid choice."
        convert
    end
end

convert