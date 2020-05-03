# Starting example for built in functions in Learning Julia


# numeric functions
# TODO: round, floor, ceil, abs

x=round(30.5)
println(x)

x=round(30.5, RoundUp)
println(x)

y=29.5
println(floor(y))
println(ceil(y))

z=-15
println(abs(z))


# text i/o
# TODO: print, println

print("Hello ")
print("there ")
println("world!")


# TODO: printstyled
#Does not work for mac terminal

thestr="This is some text"
printstyled(thestr)
println()
printstyled(thestr, bold=true)
println()
printstyled(thestr, bold=true, color=:red)
println()


# read standard input
# TODO: readline

	#print("What is your name? ")
	#str=readline()
	#println("Your name is $str")


# TODO: "is" functions

println(isascii("abc")) 
println(isascii("αβγ")) #Not ASCII

println(isdigit('9'))
println(isdigit('a'))

println(isspace(' '))
println(isspace('\r')) #Character space
println(isspace('\n')) #New line
println(isspace('A'))
