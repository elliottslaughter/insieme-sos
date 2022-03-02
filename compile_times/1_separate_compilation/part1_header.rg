import "regent"

require("common_header")

extern task part1(r : region(ispace(int1d), f)) : int
where reads(r) end
