# Starting point for Arrays example file for Learning Julia

# TODO: create an array using [] syntax
arr=[1,2,3,4,5]

println(arr)
println(typeof(arr)) #Will return Array{Int64,1}, the 1 stands for the dimension
println(length(arr))


# TODO: access an array element - array indexes are 1-based
println("Element at position 2 is ", arr[2])


# TODO: arrays can hold different types of values
arr2=["one", 2, 3.0, -4]

println(arr2)
println(typeof(arr2)) #Will be of type "Any"


# TODO: declare an array with a particular type
arr3=Float64[]
push!(arr3, 1.0, 2.0, 3.0) #! is a convention to express that "push" will modify arr3
println(arr3)

#push!(arr3, "four") 
#println(arr3)

push!(arr3, 4) #Add 4
println(arr3)


# TODO: populate an array - fill wth default values
arr4=zeros(4) #All 0
println(arr4)

arr4=ones(4) #All 1
println(arr4)

arr5=fill(5,7) #Seven 5s
println(arr5)

# TODO: Array sorting using the sort function
newarr=sort(arr, rev=true) #Rev means decreasing order
println(newarr)


# TODO: sort! modifies the original array in place
sort!(newarr) #! means we modify the object, so no need to have newarr=sort(newarr)
println(newarr)

# TODO: Convert to string with a delimiter
strval=join(arr, "-")
println(strval)

