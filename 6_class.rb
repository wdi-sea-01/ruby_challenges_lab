$students = []

def show_prompt
    puts "Would you like to add a student?"
    if gets.chomp.downcase == "yes"
        puts "What is the student's name?"
        $students.push gets.chomp
        puts "The array of instructors now looks like: #{$students.inspect}"
        show_prompt
    else
        puts "Here is a summary of your student array:"
        $students.each_with_index do |val,idx|
            puts "The student at index #{idx} is #{val}"
        end
    end
end

show_prompt