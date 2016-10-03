--Compares two triplets a and b
-- compares ai with bi  1 point to the greater value and no points if tie.

--Comparison function
function compareElement(a, b) 
	if a > b then
		return {1, 0}
	elseif a < b then
		return {0, 1}
	else
		return {0, 0}
	end
end

--Read Input
a0,a1,a2 = io.read("*number","*number", "*number","*l")
b0,b1,b2 = io.read("*number","*number", "*number","*l")

score_a = 0
score_b = 0

result = compareElement(a0,b0)
score_a = score_a + result[1]
score_b = score_b + result[2]
 
result = compareElement(a1,b1)
score_a = score_a + result[1]
score_b = score_b + result[2]

result = compareElement(a2,b2)
score_a = score_a + result[1]
score_b = score_b + result[2]

print(score_a..' '..score_b)
