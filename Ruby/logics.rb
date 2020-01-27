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

# p fib(9)


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























