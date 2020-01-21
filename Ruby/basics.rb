#=================================================================

# $i = 0
# $num = 5

# while $i < $num
#   puts "Inside the loop i = #{$i}"
#   $i += 1
# end


# $i = 0
# $num = 5
# begin
#   puts "Inside loop i = #{$i}"
#   $i += 1
# end while $i < $num





#=================================================================

# obj = "a"
# other = obj.dup

# p obj == other  #true

# obj = "a"
# other = obj

# p obj == other  #true


# p 1 == 1.0     #true
# p 1.eql? 1.0   #false
# p 1.equal? 1.0  #false

#==================================================================

# a = "hello"
# b = "hello"

# p a.object_id == b.object_id  #false

# a = "hello".freeze
# b = "hello".freeze

# p a.object_id == b.object_id  #true

# a = 5
# b = 5

# p a.object_id == b.object_id  #true


# a = "hello"
# b = a

# p a.object_id == b.object_id  #true

#=================================================================

# p Object
# p Object.new
# p Object.new.object_id
# p Object.new.object_id == Object.new.object_id  #false

#=================================================================

# class Foo

#   def fun(*args)
#   	# p args.class  #Array
#     "Hello " + args.join(' ')
#   end

# end

# f = Foo.new
# # p f.fun("Ruby", "On", "Rails")
# p f.send :fun, "Ruby", "On", "Rails"  #"Hello Ruby On Rails"


#==================================================================






























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
# d.get_data


# class Foo
# 	def initialize(name,age)
# 		@name = name
# 		@age = age
# 		@add = add
# 	end
	
# 	def get_data
# 		puts @name
# 		puts @age
# 		puts @add
# 	end
# 	def initialize(name,age,add = 0)
# 		@name = name
# 		@age = age
# 		@add = add
# 	end
# end

# f = Foo.new("Pankaj",23)
# p f.object_id
# d = Foo.new("Pankaj",23, "Delhi")
# p f.object_id
# f.get_data
# d.get_data


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


#========================================================

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
# 	class Foo
# 		def div(a,b)
# 			return a/b
# 		end
# 		def mod(a,b)
# 			return a%b
# 		end
# 	end
# end

# class Exp < Fun::Foo

# end

# e = Exp.new
# p e.div(10,2)

#==================================================

# class Foo
#   @@cvar = 0
  
#   def fun
#   	@ivar = 2
#   end

#   def show
#   	p @@cvar
#   	p @ivar
#   end

# end

# obj = Array.new(5) { Foo.new }
# p obj[0].class
# p obj.class

#==================================================

# class Foo
# 	def sum(a,b)
# 		return a+b
# 	end
# 	def sub(a,b)
# 		return b-a
# 	end
# end

# class Hoo < Foo
# 	def mul(a,b)
# 		return a*b
# 	end
# end

# h = Hoo.new
# p h.sum(5,3)
# p h.mul(5,2)

# f = Foo.new
# p f.sum(5,3)
# # p f.mul(5,2) #error


#=======================================================


# class Foo
# 	def self.sum(a,b)
# 		return a+b
# 	end
# end

# class Noo < Foo
# 	def self.sub(a,b)
# 		return b-a
# 	end
# end

# class Hoo < Noo
# 	def self.mul(a,b)
# 		return a*b
# 	end
# end

# p Hoo.sum(10,20)
# p Hoo.mul(5,2)
# p Hoo.sub(4,9)
# p Noo.sum(7,7)

#==========================================================

# class Foo
# 	def self.sum(a,b)
# 		return a+b
# 	end

# 	private
# 	def self.sub(a,b)
# 		return b-a
# 	end

# 	protected
# 	def self.mul(a,b)
# 		return a*b
# 	end

# 	public
# 	def self.mod(a,b)
# 		return a%b
# 	end
# end

# p Foo.sum(4,4)
# p Foo.sub(7,9)
# p Foo.mul(8,3)
# p Foo.mod(9,2)

#=================================================

# class Foo
# 	def self.sum(a,b)
# 		return a+b
# 	end

# 	private
# 	def self.sub(a,b)
# 		return b-a
# 	end

# 	protected
# 	def self.mul(a,b)
# 		return a*b
# 	end

# 	public
# 	def self.mod(a,b)
# 		return a%b
# 	end
# end

# class Qoo < Foo

# end

# p Qoo.sum(4,4)
# p Qoo.sub(7,9)
# p Qoo.mul(8,3)
# p Qoo.mod(9,2)


#=============================================

# class Foo
# 	def sum(a,b)
# 		return a+b
# 	end

# 	private
# 	def sub(a,b)
# 		return b-a
# 	end

# 	protected
# 	def mul(a,b)
# 		return a*b
# 	end

# 	public
# 	def mod(a,b)
# 		return a%b
# 	end
# end

# class Qoo < Foo

# end

# q = Qoo.new
# p q.sum(4,4)
# # p q.sub(7,9)  #error
# # p q.mul(8,3)  #error
# p q.mod(9,2)

#==================================================

# class Foo
# 	def self.sum(a,b)
# 		return a+b
# 	end

# 	private
# 	def self.sub(a,b)
# 		return b-a
# 	end

# 	protected
# 	def self.mul(a,b)
# 		return a*b
# 	end

# 	public
# 	def self.mod(a,b)
# 		return a%b
# 	end
# end

# p Foo.sum(5,6)
# p Foo.sub(6,9)

#==================================================

# class Foo
# 	class << self
# 		def sum(a,b)
# 			return a+b
# 		end

# 		private
# 		def sub(a,b)
# 			return b-a
# 		end

# 		protected
# 		def mul(a,b)
# 			return a*b
# 		end

# 		public
# 		def mod(a,b)
# 			return a%b
# 		end
# 	end
# end

# p Foo.sum(4,4)
# # p Foo.sub(7,9)  #error
# # p Foo.mul(8,3)   #error
# p Foo.mod(9,2)


#====================================================


# class Foo
# 	def sum(a,b)
# 		return a+b
# 	end

# 	private
# 	def sub(a,b)
# 		return b-a
# 	end

# 	protected
# 	def mul(a,b)
# 		return a*b
# 	end

# 	public
# 	def mod(a,b)
# 		return a%b
# 	end
# 	p sub(7,9)
# end

# class Qoo < Foo
# 	f = Foo.new
# 	p f.mod(4,6)
# 	# p f.mul(4,2) #error
# 	# p f.sub(7,8)  #error
# end

#===================================================

# class Foo
# 	def fun(a,b)
# 		return sub(a,b)
# 	end

# 	private
# 	def sub(a,b)
# 		return b-a
# 	end
# end

# f = Foo.new
# p f.fun(4,5)

#===================================================

# class Foo
# 	def sum(a,b)
# 		return a+b
# 	end

# 	private
# 	def sub(a,b)
# 		return b-a
# 	end
# end

# class Zoo < Foo
# 	def fun(a,b)
# 		return sub(a,b)
# 	end
# end

# z = Zoo.new
# p z.fun(4,8)

#=================================================

# class Foo
# 	def fun(a,b)
# 		return sub(a,b)
# 	end

# 	protected
# 	def sub(a,b)
# 		return b-a
# 	end
# end

# f = Foo.new
# p f.fun(5,10)

#=================================================

# class Foo
# 	def sum(a,b)
# 		return a+b
# 	end

# 	protected
# 	def sub(a,b)
# 		return b-a
# 	end
# end

# class Zoo < Foo
# 	def fun(a,b)
# 		return sub(a,b)
# 	end
# end

# z = Zoo.new
# p z.fun(4,8)

#==================================================

# class Foo
# 	@@a = 10
# 	def fun1
# 		@b = 20
# 	end
# 	def fun2
# 		@b
# 	end
# 	def fun3
# 		@@a
# 	end
# end

# # p Foo.class_variable_get(:@@a)

# f = Foo.new
# # f.fun1
# p f.fun3

#===================================================

# module Fun
# 	def sum(a,b)
# 		return a+b
# 	end
# end

# class Foo
# 	class << self
# 		include Fun
# 	end
# end

# p Foo.sum(5,9)

#===================================================

# class Foo
# 	@a = 10
# 	def fun
# 		@a
# 	end
# 	# puts @a #accessible
# end

# f = Foo.new
# p f.fun  #nil

#========================================================================================
#========================================================================================

#========================================================================================


#================================EXP:::11111=============================================

# $LOAD_PATH << '.'
# require 'modulefile.rb'
# # require 'modulefile'

# p Fun.sum(4,6)


#================================EXP:::22222=============================================

# $LOAD_PATH << '.'
# require 'modulefile.rb'
# include Fun

# p sum(4,6)



# $LOAD_PATH << '.'
# require 'modulefile.rb'
# extend Fun

# p sum(6,6)

#================================EXP:::33333=============================================

# $LOAD_PATH << '.'
# require 'modulefile.rb'

# f = Foo.new
# p f.sum(5,7)
# # p f.sub(4,6)  #error




# $LOAD_PATH << '.'
# require 'modulefile.rb'

# class Hoo < Foo
# 	def fun1(a,b)
# 		return sum(a,b)
# 	end
# 	def fun2(a,b)
# 		return sub(a,b)
# 	end
# 	def fun3(a,b)
# 		return mul(a,b)
# 	end
# end

# h = Hoo.new
# p h.fun1(5,7)
# p h.fun2(4,6)
# p h.fun3(7,8)

#========================================================

# class Person

# end

# person = Person.new
# # p person.name  # no method error



# class Person
# 	def name
# 		@name
# 	end
# end

# person = Person.new
# # p person.name
# # person.name = "Pankaj"  #no method error



# class Person
# 	def name
# 		@name
# 	end
# 	def name=(s)
# 		@name = s
# 	end
# end

# person = Person.new
# # p person.name = "Pankaj"
# person.name = "Pankaj"
# p person.name




# class Person
# 	attr_reader :name
# 	attr_writer :name
# end

# person = Person.new
# person.name = "Pankaj"
# p person.name




# class Person
# 	attr_accessor :name
# end

# person = Person.new
# person.name = "Pankaj"
# p person.name




# class Person
# 	attr_accessor :name
# 	def show
# 		"Hello #{@name}"
# 	end
# end

# person = Person.new
# person.name = "Pankaj"
# p person.show


#=========================================================


# p [1,2,3,4].inject(0) {|res, ele| res + ele}

# p [1,2,3,4].inject(10) {|res, ele| res + ele}

# p [1,2,3,4].inject(2.5) {|res, ele| res + ele}

# [1, "a", Object.new, :hi].inject({}) do |hash, item|
# 	hash[item.to_s] = item
# 	p hash
# end

#=========================================================
































