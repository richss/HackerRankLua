n = io.read("*number", "*l")
arr = {}
arr_temp = io.read()
arr_i = 1;
for token in string.gmatch(arr_temp, "[^%s]+") do
   arr[arr_i] = token
   arr_i = arr_i + 1
end

num_plus = 0
num_minus = 0
num_zero = 0

for i=1,n do
	val = tonumber(arr[i])

	if val < 0 then 
		num_minus = num_minus + 1
	elseif val > 0 then
		num_plus = num_plus + 1
	else
		num_zero = num_zero + 1
	end
end
print(num_plus/n)
print(num_minus/n)
print(num_zero/n)