import "regent"

require("common_header")
require("part1_header")

task part2(r : region(ispace(int1d), f))
where reads writes(r) do
  var total = part1(r)
  for i in r do
    r[i].x += total/2
    r[i].y -= total/2
    r[i].z += 1
  end
end

local root_dir = arg[0]:match(".*/") or "./"
local part2_h = root_dir .. "part2.h"
local part2_so = root_dir .. "libpart2.so"
regentlib.save_tasks(part2_h, part2_so, nil, nil, nil, nil, false)
