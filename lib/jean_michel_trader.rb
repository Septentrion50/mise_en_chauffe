def day_trader(arr)
  mini = arr.min
  maxi = arr.max

  min_index = arr.index(mini)  
  max_index = arr.index(maxi)
  
  if min_index > max_index
    new = arr.reject {|x| x == mini}
    mini = new.min
    min_index = arr.index(mini)
  end

  if min_index > max_index
    new = arr.reject {|x| x == maxi}
    maxi = new.max
    max_index = arr.index(maxi)
  end

  return [min_index, max_index]
end
