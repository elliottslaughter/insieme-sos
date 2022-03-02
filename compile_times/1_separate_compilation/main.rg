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
local part1 = terralib.includec("part1.h", {"-I", root_dir})
local part2 = terralib.includec("part2.h", {"-I", root_dir})
terra loader()
  part1.part1_h_register()
  part2.part2_h_register()
end
regentlib.saveobj(main, "main", nil, loader, {"part1.o", "part2.o"})
