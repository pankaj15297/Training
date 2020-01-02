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

#===================================================

# p "0x0a".hex     
# p "-1234".hex    
# p "0".hex        
# p "hello".hex   

#===================================================

# p "hello".include? "lo"  
# p "hello".include? "ol"  
# p "hello".include? ?h 
# # p "hello".include? ?he #error

#===================================================

# p "hello".index('e')             
# p "hello".index('lo')            
# p "hello".index('a')             
# p "hello".index(?e)   
# p "hello".index(/[aeiou]/)   
# p "hello".index(/[aeiou]/, -3)


#==================================================

# s = "hello"    
# p s.replace "world"
# p s

#==================================================

# p "abcd".insert(0, 'X')
# p "abcd".insert(3, 'X')
# p "abcd".insert(4, 'X')
# p "abcd".insert(-3, 'X')
# p "abcd".insert(-1, 'X')

#===================================================

# s = "hello"
# s[3] = "\b"
# p s
# p s.inspect 
# p s

#===================================================

# p "hello".intern
# s = 'cat'.to_sym
# p s
# p s == :cat
# s = '@cat'.to_sym
# p s
# p s == :@cat
# p "hello world".to_sym
# p "hello world".to_sym.class

#===================================================

# p "hello\nworld\n".lines
# p "hello\nworld\n".lines[0]
# p "hello  world".lines(' ')
# p "hel lo wor ld".lines(" ")
# p "helloworld".lines("l")
# p "hello\nworld\n".lines(chomp: true)

#==================================================

# p "hello".ljust(4)
# p "hello".ljust(20)
# p "hello".ljust(20, '1234') 

#==================================================

# p "  hello  ".lstrip
# p "hello".lstrip 

# a = "  hello    "
# p a
# p a.lstrip!
# p a

#==================================================

# p "Ruby".match?(/R.../)
# p "Ruby".match?(/R.../, 1)
# p "Ruby".match?(/R.../, 0)
# p "Ruby Python".match?(/P.../)
# p "Ruby".match?(/P.../)

#==================================================

# p "abcd".succ
# p "123".succ
# p "abcz".succ
# p "abcy".succ
# p "abcdef".succ
# p "***".succ

#=================================================

# p "123".oct
# p "-123".oct
# p "hello".oct
# p "123hello".oct

#=================================================

# p 65.chr
# p "A".ord

#=================================================

# p "hello".partition("l")
# p "hello".partition("x")

#=================================================

# a = "!"
# p a.prepend("Hello ", "World")
# p a

#==================================================

# s = "hello"
# p s.replace "world"
# p s

#==================================================

# s = "Hello"
# p s.reverse
# p s

#==================================================

# p "hello".rindex('e')
# p "hello".rindex('l')
# p "hello".rindex(?l)
# p "hello".rindex('x')
# p "hello".rindex(/[aeiou]/,0)  #nil
# p "hello".rindex(/[aeiou]/,1)
# p "hello".rindex(/[aeiou]/,2)
# p "hello".rindex(/[aeiou]/,4)
# p "hello".rindex(/[aeiou]/,5)
# p "hello".rindex(/[aeiou]/,-1)
# p "hello".rindex(/[aeiou]/,-5)  #nil

#===================================================

# p "hello".rjust(4)
# p "hello".rjust(20)
# p "hello".rjust(20,"123")

#===================================================

# p "hello".partition("l")
# p "hello".rpartition("l")
# p "hello".partition("x")
# p "hello".rpartition("x")

#===================================================

# p "hello".strip()
# p "     hello     ".strip
# p "     hello     ".rstrip()
# p "     hello     ".lstrip()

#===================================================

# s = "     hello    "
# p s.strip!
# p s

# s = "hello    "
# p s.strip!
# p s

# s = "hello"
# p s.strip!  #nil
# p s

# s = "     hello    "
# p s.rstrip!
# p s

# s = "     hello"
# p s.rstrip!
# p s

#===================================================

# s = "this is a string"
# p s.slice!(2)
# p s

#===================================================

# p "now's the time".split
# p "now's the time    ".split
# p "now's the time".split(" ")
# p "this#is#split#method".split("#")
# p "1,2,,3,4,,,".split(",")
# p "1,2,,3,4,,,".split(",", 4)
# p "1,2,,3,4,,,".split(",", 3)
# p "1,2,,3,4,,,,,5".split(",")
# p "mellow yellow".split("ello")
# p "".split
# p " ".split

#===================================================

# p "yello moon".squeeze
# p "yello moon".squeeze("m-z")

#===================================================

# p "hello".start_with?("h")
# p "hello".start_with?("hel")
# p "hello".start_with?("e")
# p "hello".start_with?("x")
# p "hello".start_with?("hel", "x")
# p "hello".start_with?("x", "h")

#===================================================

# p "hello".sub(/[aeiou]/, '*')
# p "hello".sub(/([aeiou])/, '<\1>')
# p "hello".sub(/./) {|s| s.ord.to_s + ' '}

# s = "hello"
# p s.sub!(/[aeiou]/, '*')
# p s

# s = "hello"
# p s.gsub!(/[aeiou]/, '*')
# p s

#====================================================

# p "Hello".swapcase()
# p "hELLO".swapcase()
# p "hello".swapcase
# p "HELLO".swapcase

#====================================================

# p '9'.to_c
# p '2.5'.to_c
# p 'hello'.to_c
# p '2.5/1'.to_c
# p '-i'.to_c
# p 'i'.to_c
# p '-3/2'.to_c

# p '9'.to_f
# p '9.1'.to_f
# p 'hello'.to_f

# p '9'.to_i
# p '9.4'.to_i
# p '4 + 2i'.to_i
# p 'hello'.to_i
# p "hello".to_i

# p '1100101'.to_i(2)
# p '1100101'.to_i(8)
# p '1100101'.to_i(10)
# p '1100101'.to_i(16)
# p '0a'.to_i(16)

# p '  2  '.to_r
# p '300/2'.to_r
# p '-9.2'.to_r
# p 'hello'.to_r
# p 'hello 1079'.to_r
# p 'BWV 1079'.to_r

# p 5/2 == 2.5  #false
# p 5/2r == 2.5  #true
# p '0.3'.to_r == '0.3'.to_r  #true
# p '0.3'.to_r == 3/10r
# p 0.3 == 3/10r
# p '0.3' == 3/10r

# p 12345.to_s
# p '12345'.to_s
# p 'hello'.to_s

#======================================================

# p "hello".tr('el', 'ip')
# p "hello".tr('ell', 'ip')
# p "hello".tr('l', 'L')
# p "hello".tr('a-y', 'b-z')
# p "hello".tr('a-y', 'c-z')
# p "hello".tr('aeiou', '*')
# p "hello".tr('^aeiou', '*')

# s = "hello"
# p s.tr!('el', 'ip')
# p s

#=====================================================

# "a8".upto("b6") {|s| print s, ' '}

# for s in "a8".."b6"
# 	print s, ' '
# end

# for s in "a8"..."b6"
# 	print s, ' '
# end

# p "9".upto("11").to_a
# p "25".upto("5").to_a
# p "07".upto("11").to_a


#=====================================================












































































































