import "regent"

local format = require("std/format")

task main()
  var x = 123
  var y = 3.14
  var z = "asdf"
  format.println("Hello {} {} {} world!", x, y, z)
end
regentlib.start(main)
