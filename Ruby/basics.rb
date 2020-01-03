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

























































