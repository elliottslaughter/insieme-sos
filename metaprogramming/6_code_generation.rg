import "regent"

local function make_add_x(x)
  local task add_x(y : int)
    return x + y
  end
  add_x:set_name("add_" .. tostring(x))
  return add_x
end

local adders = {
  add_1 = make_add_x(1),
  add_2 = make_add_x(2),
}
return adders
