n = io.read("*number", "*l")
a = {}
for a_i = 1,n do
   a_temp = io.read()
   a_j = 1
   a[a_i] = {}
   for token in string.gmatch(a_temp, "[^%s]+") do
      a[a_i][a_j] = token
      a_j = a_j + 1
   end
end

sum_a = 0
sum_b = 0

for i=1,n do
	sum_a = sum_a + a[i][i]
	sum_b = sum_b + a[n-i+1][i]
end

print(math.abs(sum_a-sum_b))
