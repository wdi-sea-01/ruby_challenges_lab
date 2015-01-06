a = []
File.open('words.txt') do |f|
  f.lines.each do |line|
    a << line.chomp
  end
end

find = "abbadide"
find = find.downcase

puts "SEQUENTIAL"
steps = 0
a.each_with_index do |word,idx|
    if(word.downcase == find)
        puts "we found #{find} at index #{idx} in #{steps} steps."
    end
    steps += 1
end

puts "RANDOM"
word = ""
steps = 0
until word == find.downcase
    idx = rand(a.length)
    word = a[idx].downcase
    steps += 1
end
puts "we found #{find} at index #{idx} in #{steps} steps."

puts "BINARY"

word = ""
steps = 0

lower = 0
upper = a.length
until word == find
    idx = lower + ((upper - lower) / 2)
    puts "#{lower} - #{upper}, range: #{upper-lower} , index: #{idx}"
    word = a[idx].downcase
    if word < find
        lower = idx
    elsif word > find
        upper = idx
    end
    steps += 1
end
puts "we found #{find} at index #{idx} in #{steps} steps."

steps = "?"
idx = a.index(find)
puts "INDEX METHOD"
puts "we found #{find} at index #{idx} in #{steps} steps."