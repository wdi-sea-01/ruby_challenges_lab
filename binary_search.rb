a = []
File.open('words.txt') do |f|
  f.lines.each do |line|
    a << line.chomp
  end
end

find = "xylorcinol"

puts "SEQUENTIAL"
steps = 0
a.each_with_index do |word,idx|
    if(word == find)
        puts "we found #{find} at index #{idx} in #{steps} steps."
    end
    steps += 1
end

puts "RANDOM"
word = ""
steps = 0
until word == find
    idx = rand(a.length)
    word = a[idx]
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
    word = a[idx]
    if word < find
        lower = idx
    elsif word > find
        upper = idx
    end
    steps += 1
end
puts "we found #{find} at index #{idx} in #{steps} steps."

steps = 1
idx = a.index(find)
puts "INDEX METHOD"
puts "we found #{find} at index #{idx} in #{steps} steps."