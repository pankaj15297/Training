#========================================

# h = {"name" => "Pankaj", "add" => "Delhi", "age" => 23}

# p h
# p h["name"]
# h["id"] = 101
# p h
# p h["id"] 

#========================================

# h = {:name => "Pankaj", :add => "Delhi", :age => 23}

# p h
# p h["name"]
# h["id"] = 101
# p h
# p h["id"]
# h[:pass] = "123"
# p h
# p h[:pass] 
# p h.class

#========================================

# h = Hash.new

# p h
# h["a"] = "abc"
# p h

# h = Hash.new(5)

# p h
# h["a"] = "abc"
# p h

# h = Hash.new(0)

# p h
# h["a"] = "abc"
# p h

# h = Hash.new

# p h.default = "Nothing is stored"
# p h
# p h["key"]

#===========================================

# h = Hash["name", "Pankaj", "id", 101]

# p h
# p h["name"]

# h = Hash[["name", "Pankaj"], ["id", 101]]

# p h
# p h.class

# h = Hash[[["name", "Pankaj"], ["id", 101]]]

# p h

#===========================================

# h = Hash.new("No value")

# h["a"] = "xyz"
# p h["a"]
# p h["b"]
# p h["b"].upcase!
# p h["d"]
# p h.keys
# p h.values

# p Hash.try_convert({1 => 2})
# p Hash.try_convert("1 => 2")

#===========================================

# h1 = {a:1, b:2}

# p h1
# p h1.class

# h1 = {a:1, b:2}
# h2 = {a:1, b:2, c:3}

# p h1 < h2
# p h1 > h2
# p h1 == h2
# p h1 < h1
# p h1 <= h1

# h1 = { "a" => 1, "c" => 2 }
# h2 = { 7 => 35, "c" => 2, "a" => 1 }
# h3 = { "a" => 1, "c" => 2, 7 => 35 }
# h4 = { "a" => 1, "d" => 2, "f" => 35 }
# p h1 == h2
# p h2 == h3
# p h3 == h4


# h1 = { "a" => 1, "c" => 2 }
# h2 = { "c" => 2, "a" => 1 }
# p h1 == h2

# h = { "a" => 100, "b" => 200 }
# p h["a"]
# p h["c"]

#=============================================

h = { "a" => 100, "b" => 200 }

p h
h.store("d", 7)
p h























































































