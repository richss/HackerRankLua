n = io.read("*number", "*l")

for i=1,n do
	out = ""
	for j=1,n do
		if j > n-i then
			out = out.."#"
		else
			out = out.." "
		end
	end
	print(out)
end
