puts "Enter a string:"
my_string = gets.chomp

(0...my_string.length/2).each do |idx|
    my_string[idx],my_string[-idx-1] = my_string[-idx-1],my_string[idx]
end


puts my_string