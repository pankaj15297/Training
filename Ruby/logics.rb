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

#==============================

