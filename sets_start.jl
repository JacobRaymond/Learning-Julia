# Starting point for sets example for Learning Julia

# A set is a collection of elements like an array or dictionary
# but a set can only contain one of each element and the ordering
# of elements is not important

# TODO: create a new empty set
set1=Set()
println(set1)

push!(set1, "a", 2, 5.0)
println(set1)

# TODO: create a set from a collection of values
set2=Set([1,2,3,4,2, 7,1]) #Only one instance of 2 and 1 is added. This is the unique part of a set
println(set2)

# When Julia determines a set type, you can't add different types
#push!(set2, "abc") #Error

# TODO: create a set of a given type
rainbow=Set{String}()
push!(rainbow, "red", "orange", "yellow", "green", "blue", "indigo", "violet")
println(rainbow)


# many of the array operations also work with sets
# TODO: use the in operator to see if a set contains an item

println("red" in rainbow)


# TODO: however, since there's no order, something like an index causes an error
#println(rainbow[1])


# TODO: you can calculate set intersections, differences, and unions
primarycolors = Set(["red","yellow","green","blue"])
pastels = Set(["teal","pink","lavender","coral"])

commoncolours=intersect(rainbow, primarycolors)
println(commoncolours)

allcolours=union(rainbow, pastels)
println(allcolours)

diffcolours=setdiff(rainbow, primarycolors) #Values of rainbow not in primarycolours
println(diffcolours)
