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

# h = { "a" => 100, "b" => 200 }

# p h
# h.store("d", 7)
# p h

#=============================================

# a = :hell
# p a.object_id
# b = :hell
# p b.object_id


# a = "hell"
# p a.object_id
# b = "hell"
# p b.object_id


# a = "a"
# b = "b".freeze
# h = {a => 100, b => 200}

# p a.object_id
# p h.key(100).object_id

# p b.object_id
# p h.key(200).object_id

# p h
# p h.key(100).equal? a
# p h.key(200).equal? b

#===============================================

# h = { "a" => 100, "b" => 200 }

# p h.clear
# p h

# h = {a: 1, b: false, c: nil}

# p h.compact
# p h

# h = {a: 1, b: false, c: nil}

# p h.compact!
# p h

# h = {a: 1, b: false}

# p h.compact!
# p h

#==================================================

# h1 = { "a" => 100, "b" => 200, :c => "c" }

# p h1.compare_by_identity
# p h1.compare_by_identity?

#==================================================

# h = Hash.new

# p h.default
# h.default(2)
# p h.default

# h = Hash.new("cat")

# p h.default
# h.default(2)
# p h.default

# h = Hash.new {|h,k| h[k] = k.to_i*10}

# p h
# p h.default
# p h.default(2)
# p h.default("2")

#===================================================

# h = { "a" => 100, "b" => 200 }

# p h.delete("a")
# p h
# p h.delete("z")
# p h                            
# p h.delete("z") { |e| "#{e} not found" } 

# h = { "a" => 100, "b" => 200, "c" => 300 }

# p h.delete_if {|key, value| key > "b"}
# p h

#====================================================

# h = {foo: {bar: {baz: 1}}}

# p h.dig(:foo)
# p h.dig(:foo, :bar)
# p h.dig(:foo, :bar, :baz)
# p h.dig(:fooooo)

#====================================================

# h = { "a" => 100, "b" => 200 }

# h.each {|key, value| puts "#{key} is #{value}"}
# h.each_key {|key| puts key}
# p h.empty?

# h = {}
# p h.empty?

#====================================================

# h = { "a" => "Pankaj", "b" => "Kumar" }

# p h.fetch("a")
# p h.fetch("z", "Go finish")
# p h.fetch("z") {|e| "Go finish #{e}"}
# p h.fetch_values("a", "b")
# p h.fetch_values("a","b","key") {|v| v.upcase}

#=====================================================

# h = { "a" => 100, "b" => 200, "c" => 300, "d" => 400 }

# p h.select {|key| key > "b"}
# p h.select {|key, value| value > 200}

#=====================================================

# a =  {1=> "one", 2 => [2,"two"], 3 => "three"}

# p a.flatten
# p a.flatten(2)

# h = { "a" => 100, "b" => 200 }

# p h.has_key?("a")
# p h.has_key?("z")
# p h.value?(100)
# p h.value?(500)

#=====================================================

# h = { "a" => 100, "b" => 200 }

# p h.replace({ "c" => 300, "d" => 400 }) 
# p h
# p h.to_s
# p h

# p h.invert
# p h
# p h.invert.invert == h

# p h.size
# p h.length
# p h.count

#===============================================

# h = { a: 1, b: 3, c: 4 }

# p h.invert
# p h.size == h.invert.size

# h = { a: 1, b: 3, c: 1 }

# p h.invert
# p h.size == h.invert.size

#===============================================

# h1 = { "a" => 100, "b" => 200 }
# h2 = { "b" => 246, "c" => 300 }
# h3 = { "b" => 357, "d" => 400 }

# p h1.merge
# p h1.merge h2
# p h1.merge(h2,h3)
# # p h2

# h1 = { "a" => 100, "b" => 200 }
# h2 = { "b" => 246, "c" => 300 }
# h3 = { "b" => 357, "d" => 400 }

# p h1.merge
# p h1.merge! h2
# p h1.merge!(h2,h3)

#===============================================

# a = [ "a", "b" ]
# c = [ "c", "d" ]
# h = { a => 100, c => 300 }

# p h
# p h[a]
# p a[0] = "z"
# p a
# p h[a]
# p h.rehash
# p h[a]

#===============================================

# h = { "a" => 100, "b" => 200, "c" => 300 }

# p h.reject {|k,v| k < "b"}
# p h.reject {|k,v| v > 100} 

# h = { "a" => 100, "b" => 200, "c" => 300 }

# p h.reject! {|k,v| k < "b"}
# p h.reject! {|k,v| v > 100} 

#===============================================

# h = { 1 => "a", 2 => "b", 3 => "c" }

# p h.shift 
# p h

# p h.slice(1)
# p h.slice(2,3)

#================================================

# h = { "c" => 300, "a" => 100, "d" => 400, "c" => 400  }

# p h.to_a  

# h = {a:1, b:2}

# p hp = h.to_proc
# p hp.call(:a)
# p hp.call(:b)

#================================================































