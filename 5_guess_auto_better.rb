$lower = 0
$upper = 100

number = rand($lower..$upper)
inputNumber = -1
tries = 0

def guess
    $lower + (($upper - $lower) / 2)
end


puts "Guess a number between 1 and 100"

while(inputNumber != number) do
    inputNumber = guess
    puts "You guessed #{inputNumber}"
    if(number < inputNumber)
        puts "The number is lower than #{inputNumber}"
        $upper = inputNumber
    elsif(number > inputNumber)
        puts "The number is higher than #{inputNumber}"        
        $lower = inputNumber
    end

    tries += 1
end

puts "You got it in #{tries} tries." 

