import "regent"

__demand(__local)
task part_of_main(r : region(ispace(int1d), int))
where reads writes(r) do
  fill(r, 123)
end

task main()
  var r = region(ispace(int1d, 5), int)
  part_of_main(r)
end
regentlib.start(main)
