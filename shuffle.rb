list = [ ]

puts 'Enter a list of words, and press \'enter\' to quit to form a list.'
word = 'one'

while word != ''
word = gets.chomp
list.push word
end

def shuffle array

random_cases = [ ]
count = -2
x = 0
y = 0


array.each do |word|
count = count + 1
end

while y <= count

x = rand(count+1)

if array[x] != 'used'
random_cases.push array[x]
array [x] = 'used'
y = y + 1
end

end

puts random_cases

end

shuffle list

