# Starting file system example for Learning Julia

# TODO get the current workding dir
# print("Current working directory: ")
println(pwd()) #Return directory

# TODO read the contents of the current directory
# print("Current directory contents: ")
#println(readdir()) #Return list of items in directory

# TODO open a file for writing
function createafile(filename::String, text::String="This is some text")
	io=open(filename, "w") #Open file; "w" gives permission to write. If it doesn't exist, file is created.
	write(io, text)
	close(io)
end

createafile("mytestfile.txt", "Hello world!")

# TODO open a file for reading
function readafile(filename::String)
	io=open(filename, "r") #"r" is read access
	content=read(io, String) #Specify content type
	println(content)
	close(io)
end

#readafile("mytestfile.txt")

# TODO append data to an existing file
function appendtoafile(filename::String, text::String="This is some text")
	io=open(filename, "a") #"a" is append permissions
	write(io, text)
	close(io)
end

#appendtoafile("mytestfile.txt", "This text was added")
readafile("mytestfile.txt")

# TODO rename an existing file
function renamefile()
	mv("mytestfile.txt", "newfilename.txt") #mv renames file
end

renamefile()

# TODO delete a file
rm("newfilename.txt")

