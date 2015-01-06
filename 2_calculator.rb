$total = 0.0;

def prompt_for_action
    puts "What calculation would you like to do? (add, sub, mult, div, clear, end)"
    action = gets.chomp.downcase

    case action
    when "add", "sub", "mult", "div"
        prompt_for_numbers
        do_math action
        show_result
    when "clear"
        $total = 0.0
        $num1=nil
        $num2=nil
    when "end"
        puts "goodbye"
        return
    else
        puts "Invalid operation."
    end
    prompt_for_action
end

def prompt_for_numbers
    if $num1.nil?
        puts "What is number 1?"
        $num1=gets.chomp.to_f
    else
        puts "Current total is #{$total}"
    end
    puts "What is number 2?"
    $num2=gets.chomp.to_f
end

def do_math type
    case type
    when "add"
       $total = $num1 + $num2 
    when "sub"
       $total = $num1 - $num2
    when "mult"
       $total = $num1 * $num2
    when "div"
       $total = $num1 / $num2
    end    
    $num1=$total                 
end

def show_result
    puts "Your result is #{$total}"
end

prompt_for_action