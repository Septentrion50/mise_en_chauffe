def is_multiple_of_3_or_5?(num)
  if num % 3 == 0 || num % 5 == 0
    return true
  else
    return false
  end
end

def sum_of_3_or_5_multiples(num)
  out = []
  if num.class != Integer || num < 0
    return "Integers bro, only integers."
  end
  num.times do |i|
    if is_multiple_of_3_or_5?(i)
      out << i 
    end
  end
  return out.sum
end
