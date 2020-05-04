# Starting string processing example for Learning Julia


# TODO: simple string operations - length, size
mystr = "Ångström"
teststr = "jμΛIα" # test string with some Greek characters

println("String length: ", length(mystr)) #Value is incorrect because of unicode (>1 byte)
println("Size of string: ", sizeof(mystr)) #Value is incorrect because of unicode (>1 byte)

println("String length: ", length(teststr)) #Value is incorrect because of unicode (>1 byte)
println("Size of string: ", sizeof(teststr)) #Value is incorrect because of unicode (>1 byte)


# TODO: concatenation and repetition operators
teststr= "Hello" * "world"
println(teststr)

teststr="ABCD"^3
println(teststr)

# TODO: search for substrings
teststr = "Julia programming is awesome"
println(findnext("Julia", teststr, 0)) #Search for the next "Julia" in teststr starting at char 0
println(occursin("some", teststr)) #Search for the subsctring "some" in teststr


# TODO: pad strings either left or right
teststr=lpad("Test string", 20)
println(teststr)

teststr=rpad("Test string", 20, "*") #Pad with * instead of a space
println(teststr)

# TODO: create a string from an array
arr = ["Lions","Tigers","Bears"]
teststr=join(arr, ", ", ", and ") #Can add something different for the last two elements. 
println(teststr)

