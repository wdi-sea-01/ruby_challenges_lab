$lower = 0
$upper = 9999999999999999999999999

number = rand($lower..$upper)
inputNumber = -1
tries = 0

def guess
    rand($lower..$upper)
end


puts "Guess a number between 1 and #{$upper}"

while(inputNumber != number) do
    inputNumber = guess
    puts "You guessed #{inputNumber}"
    if(number < inputNumber)
        puts "The number is lower than #{inputNumber}"
    elsif(number > inputNumber)
        puts "The number is higher than #{inputNumber}"        
    end

    tries += 1
end

puts "You got it in #{tries} tries." 

