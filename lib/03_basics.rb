def who_is_bigger(x, y, z)
  hash = {:a => x, :b => y, :c => z}
  if hash.value?(nil)
    return "nil detected"
  else
    bigger = hash.values.max
    return "#{hash.key(bigger)} is bigger"
  end 
end 

def reverse_upcase_noLTA(str)
  return str.reverse!.upcase!.delete "LTA"
end 

def array_42(array)
  if array.include? 42
    return true
  else 
    return false
  end 
end

def magic_array(array)
  return array.flatten.map{|x| x*2}.reject{|x| x%3 == 0}.sort.uniq
end 