# Starting example file demonstrating exceptions for Learning Julia

# Exceptions provide a way for a program to handle one or more 
# unexpected conditions

arg = 9

# TODO: the try / catch / finally construct is used to work with exceptions
x = sqrt(arg)
println(x)

arg = -9  #Will cause error
#x = sqrt(arg)
#println(x)

try
	x = sqrt(arg)
	println(x)
catch ex #If there's an error in the try block, executes what's in the catch (in this case, a solution)
	println(ex)
finally #Something that will run nevertheless; can be used to close a file with an error without leaking resources.
	println("This section of code always runs")
end