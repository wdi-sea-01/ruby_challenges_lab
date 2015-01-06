$balance=4000.00

def show_prompt
    puts "What would you like to do? (deposit, withdraw, check_balance, end) "
    case gets.chomp
    when 'check_balance'
        check_balance
    when 'deposit'
        deposit
        check_balance
    when 'withdraw'
        withdraw
        check_balance
    when 'end'
        puts "Thank you! Goodbye."
        return
    else
        puts "Invalid option!"
    end
    show_prompt
end

def check_balance
    puts "Your current balance is #{$balance}. "
end

def deposit
    puts "How much would you like to deposit? "
    $balance += gets.chomp.to_f
end

def withdraw
    puts "How much would you like to withdraw? "
    $balance -= gets.chomp.to_f
end

check_balance
show_prompt