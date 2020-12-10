def echo (str)
  return str
end

def shout(str)
  return str.upcase
end 

def repeat(str,n=2)
  return (str + " ")*(n-1) + str 
end

def start_of_word(str, x)
  return str[0...x]
end

def first_word(str)
  return str.split.first
end 

def titleize(str)
  array_words = str.split.map! do |i| 
    if i== "the" || i == "and"
      i 
    else
      i.capitalize  
    end
  end 
  array_words[0].capitalize!
  return array_words.join(" ")
end


