import "regent"

local data = require("common/data")
local format = require("std/format")

require("main_header")

local root_dir = arg[0]:match(".*/") or "./"
local parts = terralib.newlist({"part1", "part2", "main"})
local headers = parts:map(function(part) return terralib.includec(part .. ".h", {"-I", root_dir}) end)
local objects = parts:map(function(part) return part .. ".o" end)
terra loader()
  [data.zip(parts, headers):map(
     function(ph)
       local part, header = unpack(ph)
       local thunk = header[part .. "_h_register"]
       return `(thunk())
     end)]
end
regentlib.saveobj(main, "main", nil, loader, objects)
