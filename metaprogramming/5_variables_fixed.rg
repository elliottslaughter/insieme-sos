import "regent"

local x = 5
local y = regentlib.newsymbol(int, "y")
local ret = rquote return x + y end
print("first " .. tostring(y))

task add_x([y])
  rescape
    print("second " .. tostring(y))
  end
  [ret]
end
