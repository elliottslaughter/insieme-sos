import "regent"

local x = 5

task add_x(y : int)
  rescape
    print(y)
    remit rquote return x + y end
  end
end
