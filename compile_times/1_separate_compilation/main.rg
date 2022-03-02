import "regent"

local format = require("std/format")

require("common_header")
require("part1_header")
require("part2_header")

task main()
  var r = region(ispace(int1d, 5), f)
  fill(r.{x, y, z}, 1)
  var t1 = part1(r)
  part2(r)
  var t2 = part1(r)
  format.println("results are {} (before) {} (after)", t1, t2)
end

local root_dir = arg[0]:match(".*/") or "./"
local main_h = root_dir .. "main.h"
local main_o = root_dir .. "main.o"
regentlib.save_tasks(main_h, main_o, nil, nil, nil, nil, false)
