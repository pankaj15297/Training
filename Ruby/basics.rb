#=============================================

# s = Proc.new {}
# p s

# s = Proc.new {|x| x * 2}

# p s
# p s.call(2,3)
# p s[5,6,9,8]
# p s.call(2)
# p s.(3)
# p s[4]

#=============================================

# def fun(factor)
# 	Proc.new {|n| n * factor}
# end

# f = fun(4)
# p f.(2)

# p fun(4).(2)
# p fun(4).call(2)
# p fun(4)[2]

#=============================================

# def make_proc(&block)
# 	block
# end

# proc1 = make_proc {|x| x**2}
# p proc1.call(2)

#=============================================

# lambda1 = lambda {|x| x**2}

# p lambda1.(3)
# p lambda1.call(3)
# p lambda1[3]
# # p lambda1(3,4)  #error 

#=============================================

# def make_lambda(&block)
# 	block
# end

# lam = make_lambda {|x| x ** 2}
# p lam.call(3)

#=============================================

# proc1 = ->(x) {x**2}

# p proc1.class
# p proc1.call(5)

#=============================================

# def test
# 	[[2,5],[7,6],[8,7],[2,3],[1,2]].map {|x,y| return x if x + y > 10}
# end

# p test

#=============================================

# pro = proc {}

# p pro

# pro = proc {|x,y| x}

# lam = lambda {|x,y| x} 

# p [[1,2],[3,4]].map(&pro)
# # p [[1,2],[3,4]].map(&lam) #error

#=============================================

# class C
#   define_method(:e, &proc {})
# end

# p C.new.e()
# # p C.new.e(1,2)  #error
# p C.new.method(:e).to_proc.class
# p C.new.method(:e).to_proc.lambda?

#==============================================

# f = proc {|x| x * x}
# g = proc {|x| x + x}

# p (f << g).call(3)
# p (f >> g).call(3)
# p (g << f).call(3)
# p (g >> f).call(3)

#=================================================

# def fun(*var)
# 	var.each {|x| puts x * 2}
# end

# fun(4,5,8)
# fun(5)
# fun()

# def fun(*var)
# 	for i in var
# 		puts i * 2
# 	end
# end

# fun
# fun(5)
# fun(4,8,9)

#=================================================

# p proc {}.arity
# p proc {||}.arity
# p proc {|a|}.arity
# p proc {|a,b|}.arity
# p proc {|a,b,c|}.arity
# p proc {|*a|}.arity

#==================================================

# p proc {|a,b| [a,b]}.call(5,3)
# p proc {|a,b| [a,b]}.call(1,2,7)
# p proc {|a,b| [a,b]}.call([2,8])
# p proc {|a,b| [a,b]}.call([1,8,6])

# p lambda {|a,b| [a,b]}.call(4,7)
# # p lambda {|a,b| [a,b]}.call(4)  #error
# # p lambda {|a,b| [a,b]}.call(5,4,7) #error

# p lambda {}.lambda?
# p proc {}.lambda?
# p Proc.new {}.lambda?

# def n(&b)
# 	b.lambda?
# end

# p n(&lambda {})

#==================================================

# def fun
# 	puts "before yield"
# 	yield
# 	puts "after yield"
# 	yield
# end

# fun{puts "yield statement"} 


# def fun
# 	puts "before yield"
# 	yield
# 	puts "after yield"
# 	yield 1
# 	yield 2
# end

# fun{|i| puts "yield statement #{i}"} 

#==================================================

# def fun(&block)
# 	puts "this is method"
# end

# fun()


# def fun(&block)
# 	puts "this is method"
# 	block.call
# end

# # fun()
# fun {puts "this is &block example"}

#===================================================

# p 1.class

# p self.class

# class Foo

# end

# class Abc
# 	@@a = 52
# end

# p Abc.class_variable_get(:@@a)

# puts Foo.new
# puts Foo.new.class

# class Foo
# 	def set_data(name,age,add)
# 		@@name = name
# 		@@age = age
# 		@@add = add
# 	end
	
# 	def get_data
# 		puts @@name
# 		puts @@age
# 		puts @@add
# 	end
# end

# f = Foo.new
# f.set_data("Pankaj",23,"Delhi")
# f.get_data

# class Foo
# 	def initialize(name,age,add)
# 		@@name = name
# 		@@age = age
# 		@@add = add
# 	end
	
# 	def get_data
# 		puts @@name
# 		puts @@age
# 		puts @@add
# 	end
# end

# f = Foo.new("Pankaj",23,"Delhi")
# f.get_data

#====================================================Doubt

# class Foo
# 	def initialize(name,age)
# 		@@name = name
# 		@@age = age
# 		@@add = add
# 	end
	
# 	def get_data
# 		puts @@name
# 		puts @@age
# 		puts @@add
# 	end
# 	def initialize(name,age,add = 0)
# 		@@name = name
# 		@@age = age
# 		@@add = add
# 	end
# end

# f = Foo.new("Pankaj",23)
# p f.object_id
# d = Foo.new("Pankaj",23, "Delhi")
# p f.object_id
# f.get_data

#======================================================

# module Fun

# end

# p Fun.class

# module Fun
# 	V = 22
# 	def Fun.sum(a,b)
# 		return a+b
# 	end
# 	def Fun.sub(a,b)
# 		return b-a
# 	end
# 	def Fun.mul(a,b)
# 		return a*b
# 	end
# end

# p Fun::V
# p Fun.sum(5,2)
# p Fun.sub(10,20)
# p Fun.mul(5,3)



# module Fun
# 	V = 22
# 	def sum(a,b)
# 		return a+b
# 	end
# 	def sub(a,b)
# 		return b-a
# 	end
# 	def mul(a,b)
# 		return a*b
# 	end
# end

# include Fun

# p V
# p sum(5,2)
# p mul(5,2)



# module Fun
# 	V = 22
# 	def sum(a,b)
# 		return a+b
# 	end
# 	def sub(a,b)
# 		return b-a
# 	end
# 	def mul(a,b)
# 		return a*b
# 	end
# end

# extend Fun

# # p V  #error
# p sum(5,2)
# p mul(5,2)



# module Fun
# 	V = 22
# 	def sum(a,b)
# 		return a+b
# 	end
# 	def sub(a,b)
# 		return b-a
# 	end
# 	def mul(a,b)
# 		return a*b
# 	end
# end

# class Fea
# 	include Fun
# end

# f = Fea.new
# # p Fea.class_variable_get(:V) #error
# p f.sum(5,2)
# p f.mul(5,2)



# module Fun
# 	V = 22
# 	def sum(a,b)
# 		return a+b
# 	end
# 	def sub(a,b)
# 		return b-a
# 	end
# 	def mul(a,b)
# 		return a*b
# 	end
# end

# class Fea
# 	extend Fun
# end

# # p Fea.class_variable_get(:V) #error

# p Fea.sum(5,2)
# p Fea.mul(5,2)




















