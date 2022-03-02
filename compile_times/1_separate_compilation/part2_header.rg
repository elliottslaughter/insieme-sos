import "regent"

local common = require("common_header")

extern task part2(r : region(ispace(int1d), f))
where reads writes(r) end
