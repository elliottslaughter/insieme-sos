import "regent"

local x = 5

task add_x(y : int)
  return x + y
end

print(x) -- 5
print(add_x) -- <add_x>
