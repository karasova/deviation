-- local file = io.open(arg[1], "r")
-- lines = file:read("*a")
-- file:close(...)

-- string.gsub( lines,"%\n", " ")

-- txt = {}
-- for substring in lines:gmatch("%S+") do
--     table.insert(txt, substring)
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
