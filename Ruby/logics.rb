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



