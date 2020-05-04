# Starting random numbers example for Learning Julia
using Random #Imports the Random module

# TODO: generate a random number between 0 and 1
println(rand())


# TODO: pick a random element from a given collection
for i in 1:3
	println(rand([1,2,3,4,5,6])) #Choose 3 random items from the list
end


# TODO: populate an array with random values
arr=rand(UInt8, 5) #5 integers; will appears as something weird like 0x51
println(arr)


# TODO: generate a random string
println(randstring("ABCD")) #Default length=8 
println(randstring('a':'z', 6)) #Generate 6 characters from a to z


# TODO: shuffle a list of elements
vowels = ["A","E","I","O","U"]
Random.shuffle!(vowels)
println(vowels)


# TODO: use the seed function to control the random number generator
Random.seed!(1000) #changing the seed, hence the !
println(rand())
println(rand())
println()
Random.seed!(1000)
println(rand())
println(rand())
println()