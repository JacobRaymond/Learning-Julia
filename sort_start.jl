# Starting sorting example for Learning Julia

arr1 = [2, 8, -3, -15, 5, -7, 9, 0, 11]

# TODO sort the data by a simple transformation
result=sort(arr1, by=abs) #No ! point because we want to create a new array, not replace the old one
	#by=abs means we sort by absolute value. It won't return the absolute value though

println(result)

# TODO check to see if an array is already sorted
arrtup = [(1, 2), (2, 1), (3, 5), (4, 0)]

println(issorted(arrtup, by=x->x[1])) #by=x->x[1] means to verify the first item only of each tuple
println(issorted(arrtup, by=x->x[2]))

# Sorting custom types
struct MyRect
    length::Int
    width::Int
end

arr2 = [MyRect(12, 22), MyRect(10, 18),MyRect(7, 12),MyRect(9, 30)]

#We want to sort by rectangle area
# TODO declare a custom sorting function
function comparearea(rect1::MyRect, rect2::MyRect)
	area1=rect1.length*rect1.width
	area2=rect2.length*rect2.width
	return area1<area2
end

sort!(arr2, lt=comparearea) #Compares all rectangles and ranks them based on less than (lt)
print(arr2)