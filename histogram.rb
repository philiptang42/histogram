puts "say something"
text = gets.chomp

words = text.split(" ")

frequencies = Hash.new(0)

words.each do |word|
  frequencies[word] += 1
end

frequencies = frequencies.sort_by do |word, frequency|
  frequency
end
frequencies.reverse!

frequencies.each do |word, frequency|
  puts word + " " + frequency.to_s
end
