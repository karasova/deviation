-- local file = io.open(arg[1], "r")
-- lines = {}
-- for line in io.lines(file) do 
--     lines[#lines + 1] = tonumber(line)
-- end

lines = {}
for i = 0, 99 do
    lines[i+1] = i
end

for i=1, #lines do
    print(lines[i])
end

sum = 0
dev = {}
count = 0

for i=1, #lines do
    sum = sum + lines[i]
    count = count + 1
end

m = sum / count

sum = 0.0

for i=1, #lines do
    sum = sum + (lines[i] - m)*(lines[i] - m)
end
m = math.sqrt(sum/count)

print(m)