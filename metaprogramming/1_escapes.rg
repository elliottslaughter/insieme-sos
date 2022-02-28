import "regent"

local x = 5

task add_x(y : int)
  [print(y) or rquote end]
  return x + y
end
