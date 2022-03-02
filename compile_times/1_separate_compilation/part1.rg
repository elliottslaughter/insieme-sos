import "regent"

require("common_header")

task part1(r : region(ispace(int1d), f))
where reads(r) do
  var total = 0
  for i in r do
    total += r[i].x * r[i].y + r[i].z
  end
  return total
end

local root_dir = arg[0]:match(".*/") or "./"
local part1_h = root_dir .. "part1.h"
local part1_o = root_dir .. "part1.o"
regentlib.save_tasks(part1_h, part1_o, nil, nil, nil, nil, false)
