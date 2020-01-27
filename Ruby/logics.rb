#================Remove #Tag words=======================

# str = "#This #is Ruby On Rails #framework"
# arr = str.split(' ')
# newstr = ""
# for i in arr do
#   if i[0] != "#"
#     newstr += i + " "
#   end
# end
# print newstr

#==============Remove special charactor====================


# string = '#This is * Ruby \ on% Rail"s'
# p string.gsub(/[*#%\\"]/, "")


#=================largest number============================

# a = [300,5,2,3,6,7,4,9,8,120,6,25,1,12]

# def find_1max(x)
# 	max = 0
# 	for i in 0...x.length do
# 		for j in 0...x.length do
# 			if x[j] > max
# 				max = x[j]

# 			end
# 		end
# 	end
# 	return max
# end


# p B = find_1max(a)

#=================Second/Third/... largest number============================

# a = [300,5,2,3,6,7,4,9,8,120,6,25,1,12]

# def find_1max(x)
# 	max = 0
# 	for i in 0...x.length do
# 		for j in 0...x.length do
# 			if x[j] > max
# 				max = x[j]

# 			end
# 		end
# 	end
# 	return max
# end


# B = find_1max(a)

# def find_2max(x)
# 	max = 0
# 	for i in 0...x.length do
# 		for j in 0...x.length do
# 			if x[j] > max and x[j] != B
# 				max = x[j]

# 			end
# 		end
# 	end
# 	return max
# end


# C = find_2max(a)
# p C


# def find_3max(x)
# 	max = 0
# 	for i in 0...x.length do
# 		for j in 0...x.length do
# 			if x[j] > max and x[j] != B and x[j] != C
# 				max = x[j]

# 			end
# 		end
# 	end
# 	return max
# end

# p find_3max(a)


#=======================Second largest number======================

# a = [300,5,2,3,6,7,4,9,8,120,6,25,1,12]

# a.sort!
# a.uniq!
# p a[-2]

#========================Febonaci Series========================


# def fib(n)
# 	if n <= 1
# 		return n
# 	end
# 	return fib(n-1) + fib(n-2)
# end

# print "Enter a number: "
# n = gets.chomp.to_i
# puts "Sum of fibonacci series upto #{n} is : #{fib(n+1) - 1}"


#=======================Count frequency of words=========================


# def count_words(string)
#   # words = string.split(' ')
#   words = string.scan(/\w+/)
#   frequency = Hash.new(0)
#   words.each { |word| frequency[word.downcase] += 1 }
#   return frequency
# end

# p count_words("my pen is green / your pen is blue")



# text = "my pen is green / your pen is blue"
# # a = text.split()
# b = text.scan(/\w+/)
# # p a  #["my", "pen", "is", "green", "/", "your", "pen", "is", "blue"]
# # p b  #["my", "pen", "is", "green", "your", "pen", "is", "blue"]

# c = Hash.new(0)
# b.each do |b|
#   c[b] += 1
# end

# p c


#=================== Sort according to keys and values length =================

# h = {'pankaj' => 'name', 123 => 24, 1024 => 'kr', 5896 => 'aDf56ytz', 'a' => 5}

# p h.keys                                   #["pankaj", 123, 1024, 5896, "a"]
# p h.keys.map(&:to_s)                       #["pankaj", "123", "1024", "5896", "a"]
# p h.keys.map(&:to_s).sort_by(&:length)     #["a", "123", "1024", "5896", "pankaj"]
# p h.values.map(&:to_s).sort_by(&:length)   #["5", "24", "kr", "name", "aDf56ytz"]


#======================== Sum of length of all values ===========================

# a = ["dell", "hp", "lenevo", "shoe"]
# c = a.inject(0) { |a,b| a + b.to_s.length}
# p c                                        #16
# c = a.inject(0) { |a,b| a + b.length }
# p c                                        #16


#================================Patern on \\==========================================

# for i in 1..5 do
#   for j in 1..5 do
# 	  if i==j
# 		print "\\"
# 	  elsif j == (6 - i)
# 		print"/"		
# 	  else
# 		print"*"
# 	  end
#   end
#   print("\n")
# end


# \***/
# *\*/*
# **\**
# */*\*
# /***\


#======================================Factorial=======================================

# def fact(n)
#   if n == 0
#   	return 1
#   else
#   	return n * fact(n-1)
#   end
# end

# p fact(3)



# def fact(n)
#   return 1 if n == 0
#   return n * fact(n-1)
# end

# p fact(0)
# p fact(1)
# p fact(2)
# p fact(4)


#====================Find missing number===============

# a = [1,5,7]
# b = (1..10).to_a
# print b - a

# a = [2,8]
# b = (0..10).step(2).to_a
# print b - a

#=================Make a whitespace sepereted meaningful sentance====================

# d = ["This", "Hello", "is", "Mobile", "Pankaj"]
# s = "ThisisMobile"
# a = ""
# for i in d do
#   if s.include? i
#     a += i + " "
#   end
# end

# p a

#========================Prime number==============================

# a = [0,1,2,3,4,5,6,7,8,9,10,3,-11,5,5,5,11,12,13,14,15,16,17,18,19,20,21,22,23,-5]

# def prime(n)
# 	if n == 2
# 		return true
# 	elsif n <= 1
# 		return false
# 	end
# 	for i in 2..(n-1) do
# 		if n % i == 0
# 			return false
# 		end
# 	end
# 	return true
# end

# t = a.select { |x| prime(x) == true }
# print t



# def prime(n)
# 	if n == 2
# 		return true
# 	elsif n <= 1
# 		return false
# 	end
# 	for i in 2..(n-1) do
# 		if n % i == 0
# 			return false
# 		end
# 	end
# 	return true
# end

# p prime(-4)
# p prime(-3)
# p prime(-1)
# p prime(0)
# p prime(1)
# p prime(2)
# p prime(3)
# p prime(6)
# p prime(9)
# p prime(11)



# def checkprime(n)
# 	if n<=1
# 		return false
# 	end
#    for i in 2..(n-1) do

#  	   if n % i == 0
#  		 return false
#         end
#  	end
#         return true
# end

# p checkprime(-4)
# p checkprime(-3)
# p checkprime(-1)
# p checkprime(0)
# p checkprime(1)
# p checkprime(2)
# p checkprime(3)
# p checkprime(6)
# p checkprime(9)
# p checkprime(11)

#=========================Fibonacci series============================


# a = 0
# b = 1
# arr = [a,b]
# for i in 3..10
#   f = a + b
#   arr.append(f)
#   a = b
#   b = f
# end

# p arr



# a = 0
# b = 1
# print "#{a} #{b} "
# for i in 3..10
#   f = a + b
#   print "#{f} "
#   a = b
#   b = f
# end

#=======================Sum of a fibonacci series=================================

# a = 0
# b = 1
# arr = [a,b]
# for i in 3..20
#   f = a + b
#   arr.append(f)
#   a = b
#   b = f
# end

# p arr[0..4].sum

#======================Print 1 to 100 without any loop============================

# def fun(n)
#   if n > 100
#     return
#   else
#     puts n
#     fun(n+=1)
#   end
# end

# fun(1)


#===============================Palindrome==================================

# a = "ABCDE"
# rev = ""
# for i in 1..a.length do
#   rev += a[a.length - i]
# end
# if rev % 2 == 0
#   a += rev
# else
#   a += rev[1..a.length]
# end

# print a


#======================A pattern for alphabetic right triangle=====================

# c = 0
# for i in 1..5 do
# 	for j in 1..5 do
# 	  if i >= j
# 		print (65+c).chr
# 		c += 1
# 	  end
# 	end
# 	print("\n")
# end


# A
# BC
# DEF
# GHIJ
# KLMNO


#=========================Counting frequency of words=========================

# s = "ab bc ef pk pk pk ab pk"
# n = s.split(" ")
# u = n.uniq
# for i in 0...u.length do
#   print "#{u[i]} is #{n.count(u[i])} times \n"
# end

#============================Prime no. on a range================================

# print "Enter a range to know Prime no. in between."
# print "\nfrom: "
# s = gets.chomp.to_i
# print "to: "
# e = gets.chomp.to_i
# a = (s..e).to_a

# def checkprime(n)
#   if n<= 1
# 	return false
#   end
#   for i in 2..(n-1) do
#     if n % i == 0
#  	  return false
#     end
#   end
#   return true
# end

# t = a.select { |x| checkprime(x) == true }
# print t


#============================Armstrong number==================================

# print "Enter a number to its Armstrong no: "
# v = gets.chomp
# n = v.split("")
# a = []
# for i in n
#   a.append(i.to_i**3)
# end
# s = a.sum
# if s == v.to_i
#   puts "Armstrong Number"
# else
#   puts "Not a Armstrong Number"
# end








