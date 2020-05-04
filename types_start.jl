# Starting custom types example file for Learning Julia

#Can't create classes, but can create types
# TODO Create a new custom type using the struct keyword
struct MyType
	field1::Int
	field2::String
end

# TODO instantiate the type
x=MyType(10, "ABC")
println(x)
println(x.field1)

#x.field1=20 #Will cause error -  types are immutable

# TODO use "mutable" to make a type that can be altered

mutable struct MyMutableType
	field1::Int
	field2::String
end

x=MyMutableType(10, "ABC")
x.field2="DEF"
println(x)

# TODO use the isa() method to see if a variable is a given type
println(isa(x, MyMutableType))