def expanded_english_number number
if number < 0
return 'No negative numbers. Enter a new number.'
end
if number == 0
return 'zero'
end

num_string = ''

ones = [ 'one', 'two', 'three',
'four', 'five', 'six',
'seven', 'eight', 'nine']

tens = [ 'ten', 'twenty', 'thirty',
'forty', 'fifty', 'sixty',
'seventy', 'eighty', 'ninty']

teens = [ 'eleven', 'twelve', 'thirteen',
'fourteen', 'fifteen', 'sixteen',
'seventeen', 'eighteen', 'nineteen']
left = number

write = left/1000000000000
left = left - write*1000000000000

if write > 0
trillions = expanded_english_number write
num_string = num_string + trillions + ' trillion'

if left > 0
num_string = num_string + ' '
end
end

write = left/1000000000
left = left - write*1000000000

if write > 0
billions = expanded_english_number write
num_string = num_string + billions + ' billion'

if left > 0
num_string = num_string + ' '
end
end

write = left/1000000
left = left - write*1000000

if write > 0
millions = expanded_english_number write
num_string = num_string + millions + ' million'

if left > 0
num_string = num_string + ' '
end
end

write = left/1000
left = left - write*1000

if write > 0
thousands = expanded_english_number write
num_string = num_string + thousands + ' thousand'

if left > 0
num_string = num_string + ' '
end
end

write = left/100
left = left - write*100

if write > 0
hundreds = expanded_english_number write
num_string = num_string + hundreds + ' hundred'

if left > 0
num_string = num_string + ' '
end
end

write = left/10 
left = left - write*10 
if write > 0
if ((write == 1) and (left > 0))
num_string = num_string + teens[left-1]
left = 0
else
num_string = num_string + tens[write-1]
end

if left > 0
num_string = num_string + '-'
end
end

write = left
left = 0

if write > 0
num_string = num_string + ones[write-1]
end

num_string
end


puts expanded_english_number(1000)
puts expanded_english_number(10000)
puts expanded_english_number(1000000)
puts expanded_english_number(1000000000)
puts expanded_english_number(1000000000000)



