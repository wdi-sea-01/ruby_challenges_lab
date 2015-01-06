number = rand(1..100)
inputNumber = -1
tries = 0
puts "Guess a number between 1 and 100"

while(inputNumber != number) do
    inputNumber = gets.chomp.to_i
    if(number < inputNumber)
        puts "The number is lower than #{inputNumber}"
    elsif(number > inputNumber)
        puts "The number is higher than #{inputNumber}"        
    end
    tries += 1
end

puts "You got it in #{tries} tries." 