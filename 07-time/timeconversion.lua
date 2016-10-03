time = io.read()

-- Get AM-PM
am_pm = string.sub(time,9,10)

--Convert Hour
if am_pm == "PM" then
	if (tonumber(string.sub(time,1,2))) ~= 12 then
		time = ""..(tonumber(string.sub(time,1,2)) + 12)..string.sub(time,3,8)
	else
		time = string.sub(time,1,8)
	end
else
	if (tonumber(string.sub(time,1,2))) ~= 12 then
		time = string.sub(time,1,8)
	else
		time = "00"..string.sub(time,3,8)
	end
end


--Output Time
print(time)