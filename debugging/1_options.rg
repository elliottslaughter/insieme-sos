import "regent"

local format = require("std/format")

task main()
  format.println("{03}", 7)
  format.println("{7.2}", 3.14)
  format.println("{e}", 100.0)
end
regentlib.start(main)
