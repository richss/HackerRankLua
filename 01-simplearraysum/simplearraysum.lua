n = io.read("*number", "*l")
arr = {}
arr_temp = io.read()
arr_i=1
for token in string.gmatch(arr_temp, "[^%s]+") do
	arr[arr_i] = token
	arr_i = arr_i + 1
end

--Calculate the Sum
sum = 0
for i=1,#arr do
	sum = sum + arr[i]
end
print(sum)