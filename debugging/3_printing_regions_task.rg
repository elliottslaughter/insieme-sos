import "regent"

local format = require("std/format")

task print_task(r : region(ispace(int1d), int))
where reads(r) do
  format.println("{}", r[0])
end

__demand(__inner)
__demand(__replicable)
task main()
  var r = region(ispace(int1d, 5), int)
  fill(r, 123)
  print_task(r)
end
regentlib.start(main)
