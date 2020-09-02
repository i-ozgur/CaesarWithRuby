require 'pry'
def caesar_cipher(string = "",num = 0)
	downCaseDownLim = "a".ord
	downCaseUpLim = "z".ord
	upCaseDownLim = "A".ord
  upCaseUpLim = "Z".ord
	strArr = string.split('').map! do |char|
		if ((char.ord <= downCaseUpLim) && (char.ord >= downCaseDownLim)) 
			newOrd = char.ord + num
      while newOrd > downCaseUpLim
        newOrd = newOrd - (downCaseUpLim - downCaseDownLim) 
      end
      while newOrd < downCaseDownLim
        newOrd = newOrd + (downCaseUpLim - downCaseDownLim) 
      end
			char = newOrd.chr
    
    elsif((char.ord <= upCaseUpLim) && (char.ord >= upCaseDownLim)) 
      newOrd = char.ord + num
      while newOrd > upCaseUpLim
        newOrd = newOrd - (upCaseUpLim - upCaseDownLim)
       end
       while newOrd < upCaseDownLim
        newOrd = newOrd + (upCaseUpLim - upCaseDownLim)
       end
      char = newOrd.chr
    else 
        char = " "
    end
    
  end
  return strArr.join("")
end
puts "enter your string"
string = gets.chomp
puts "Now enter the shift"
shift = gets.chomp.to_i
puts "your ciphered string is", caesar_cipher(string,shift)
      