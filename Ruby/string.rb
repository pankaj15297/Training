#==============================================

# a = String.try_convert("Hello")
# p a


# a = String.try_convert(//)
# p a


# a = String.try_convert(123)
# p a

#==============================================

# p "HII " * 5
# p "Hi " * 0

#==============================================

# p "Hello from " + self.to_s 

#==============================================

# a = "hello "
# p a
# a << "world"
# p a
# a << 33
# p a

#===============================================

# p "ABC" <=> "abc"
# p "aBC" <=> "Abc"
# p "ab" <=> "ABCD"
# p "hello" <=> "hello"
# p "abc" <=> 123

#===============================================

# p "abc" == "abc"
# p "abc" == "xyz"
# p "abcd" === "abcd"
# p "abcd" === "abcde"
# p "abc".eql? "abc"
# p "abc".eql? "ABC"
# p "abcd".eql? "abc"


#===============================================

# a = "Hello World"

# p a[100000] #nil
# p a[1]
# p a[0..2]
# p a[2..7]
# p a[2...7]
# p a[2,5]
# p a[2,7]
# p a[2,100000]

# p a[-1]
# p a[-0]
# p a[0]
# p a[-1,4] #nil
# p a[-4,3]
# p a[-10000]
# p a[-8,10000]
# p a[-4..-1]
# p a[-4...-1]
# p a[-10000..-2] #nil
# p a[-10000,-1]


#=================================================

# p "abc".force_encoding("UTF-8")
# p "abc\u{6666}".force_encoding("UTF-8")

#=================================================

# p "\x80\u3032".bytesize
# p "Hello".bytesize

#=================================================

# p "hello".byteslice(1)
# p "hello".byteslice(1,3)
# p "hello".byteslice(-1)
# p "hello".byteslice(1..3)
# p "hello".byteslice(1...3)

#=================================================

# p "hello".capitalize
# p "Hello".capitalize
# p "HELLO".capitalize
# p "hELLO".capitalize
# p "54565hello".capitalize

# s = "hello"
# p s.capitalize!
# p s

# s = "Hello"
# p s.capitalize! #nil
# p s

#==================================================

# p "abc".casecmp("abc")
# p "abc".casecmp("ABC")
# p "aBcD".casecmp("AbCd")
# p "abcd".casecmp("ABC")
# p "abc".casecmp("ABCD")
# p "abc".casecmp(462)
# p "abCD".casecmp("ABCD")
# p "abcdE".casecmp("ABCD")

#==================================================

# p "abcd".casecmp?("abcd")
# p "abcd".casecmp?("ABCD")
# p "abcd".casecmp?("ABCDE")
# p "abcd".casecmp?(1000)

#===================================================

# p "hello".center(7)
# p "hello".center(4)
# p "hello".center(20)
# p "hello".center(7,'*')
# p "hello".center(21,"*")

#===================================================

# p "hello".chomp
# p "hello\n".chomp
# p "hello\r\n".chomp
# p "hello\n\r".chomp
# p "hello".chomp("llo")
# p "hello\r".chomp
# p "hello\r\n\r\n".chomp

# a = "hello\n"
# p a.chomp!
# p a

# a = "hello"
# p a.chomp!
# p a

#=================================================

# a = "hello"

# p a.chr
# p a.clear
# p a

#================================================

# a = "Hello "

# p a.concat("World")
# p a

# a = "Hello"

# p a.concat(" ","World", 33)
# p a

#================================================

# a = "hello world"

# p a.count("l")
# p a.count("lo")
# p a.count("lo", "o")

# a = "hello world\\r\\n"
# p a.count("\\")

#=================================================

# a = "hello"

# p a.delete "l"
# p a


# a = "hello"
# p a.delete_prefix("hel")
# p a

# p "hello".delete_prefix("llo")

#==================================================

# a = "hello"

# p a.delete_suffix("llo")
# p a

#=================================================

# p "hello".downcase
# p "Hello".downcase
# p "HELLO".downcase

# a = "HeLLo"
# p a.downcase!
# p a

# a = "hello"
# p a.downcase!
# p a

#===================================================

# p "hello \n ''".dump

#===================================================

# "hello".each_byte {|c| print c, " "}
# "hello".each_char {|c| print c, " "}
# "hello\nworld".each_line {|s| p s}
# "hello\nworld".each_line {|s| puts s}

# "hello\nworld".each_line("l") {|s| p s}
# "helloworld".each_line("l") {|s| p s}

# "hello\n\n\nworld".each_line {|s| p s}
# "hello\n\n\nworld".each_line('') {|s| p s}


#===================================================

# p "hello".empty?
# p "".empty?
# p " ".empty?

#===================================================

# p "hello".end_with?('o')
# p "hello".end_with?('lo')
# p "hello".end_with?('ol')

# p "hello".end_with?("Hii", "llo")
# p "hello".end_with?("Hii", "ol")

# p "hello".end_with?("llo", "hii", "panakj")

#===================================================

# p "abc".eql? "abc"
# p "abc".eql? "abcd"
# p "abc".eql? "ABC"

#===================================================

# p "hello".gsub(/[aeiou]/, "*")
# p "hello".gsub(/([aeiou])/, '<\1>')
# p "hello".gsub(/[aeiou]/, '<\1>')
# p "hello".gsub(/./) {|s| s.ord.to_s + ' '}
# p "hello".gsub(/[eo]/, 'e' => 3, 'o' => "*")

















































