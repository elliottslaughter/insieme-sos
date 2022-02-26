import "regent"

local x = 5

task add_x(y : int)
  [rquote return x + y end]
end
