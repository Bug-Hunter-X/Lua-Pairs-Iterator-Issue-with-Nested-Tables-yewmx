local function foo(t)
  for k, v in pairs(t) do
    print(k, v)
    if type(v) == "table" then
      foo(v)  -- Recursive call for nested tables
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t) 