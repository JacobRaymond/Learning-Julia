# Starting point for tuples example for Learning Julia

# TODO: a tuple is a sequence of values and is immutable once defined; can't be changed e.g. list of arguments for a function
# like an array, it can contain different types

tup=(1, 3.0, "five", 7, '9') #() for tuples, [] for arrays
println(tup[3])
println(tup[2:4])

# TODO: Tuples can be iterated over like arrays
for i in tup
	println(i)
end


# TODO: The "in" operator can be used to see if a tuple contains a value
println(3 in tup)
println(4 in tup)

# TODO: tuples can have multiple dimensions (contain multiple tuples!)
dimtup=((1,2), (3,4), (5,6))
println(dimtup[3])
println(dimtup[1][2]) #Second value of 1st tuple


# TODO: attempting to modify a tuple will produce an error

#tup[2][1]=11

# TODO: Named Tuples provide a way to associate names with tuple values
namedtup=(a=1, b="two", c='3')
println(namedtup.a)

