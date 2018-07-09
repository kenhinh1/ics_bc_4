
list = [ ]

puts 'Enter a list of words, and press \'enter\' to quit to form a list.'
word = 'one'

while word != ''
word = gets.chomp
list.push word
end

def sort array
count = -2

array.each do |word|
count = count + 1
end

recursive_sort(array, [ ], [ ], count)
end

def recursive_sort listA, listB, sorted, nums


x = 0
y = 0
z = 0



while x <= nums

if listA[x].downcase <= listA[y].downcase
y = y + 1

if y == nums + 1
sorted.push listA[x]
x = x + 1
y = 0
z = z + 1
end

else
listB.push listA[x]
x = x + 1
y = 0
end

end


nums = nums - z
listA = [ ]
x = 0
y = 0
z = 0
if nums < 0
x = nums + 5
end

while x <= nums

if listB[x].downcase <= listB[y].downcase
y = y + 1

if y == nums + 1
sorted.push listB[x]
x = x + 1
y = 0
z = z + 1
end

else
listA.push listB[x]
x = x + 1
y = 0
end

end

nums = nums - z
x = 0
y = 0
z = 0

if nums < 0
puts 'sorted list: '
puts sorted

else recursive_sort(listA, [ ], sorted, nums)

end

end

sort list



