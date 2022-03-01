import "regent"

local format = require("std/format")

--__demand(__inner) -- ERROR: task is not a valid inner task
-- __demand(__replicable) -- ERROR: task is not a valid replicable task
task main()
  var r = region(ispace(int1d, 5), int)
  fill(r, 123)
  format.println("{}", r[0])
end
regentlib.start(main)
