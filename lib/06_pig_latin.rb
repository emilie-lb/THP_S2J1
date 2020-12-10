  def translate(str)
    word_array = str.split
    sentence_array = []
    word_array.each do |word|
      sentence_array << word_translate(word)
    end
    return sentence_array.join(" ")
  end 

  def word_translate(str)
    vowel= "aeiou"
    if vowel.include?(str[0]) == true
      return "#{str}ay"
    else 
     consonnant = []
     i=0
      while vowel.include?(str[i]) == false
          consonnant << str[i]
          if str[i+1].include? "u"
            consonnant << str[i+1]
          end
          i +=1
      end 
      return "#{str[consonnant.size .. -1]}" + consonnant.join + "ay"
    end
  end

=begin
translate("apple")
translate("banana")
translate("cherry")
translate("eat pie")
translate("three")
translate("school")
translate("quiet")
translate("square")
=end
