-- originally made by bditt, i modifed to work on luau!
if game.CoreGui:FindFirstChild("fsg") then
game.CoreGui.fsg:Destroy()
end
local sbuilder = {}
local list = {}
local event = {}
local bit = {}
local color = {}
local ui = {}
local getfullname, prettytable

--sbuilder lib
do
function sbuilder:append(s)
self.size = self.size + 1
self.text[self.size] = s
end

function sbuilder:concat()
return table.concat(self.text, '')
end

function sbuilder.new()
return setmetatable({text = {}, size = 0}, {__index = sbuilder})
end

setmetatable(sbuilder, {__call = sbuilder.new})
end

--list lib
do
function list:push(v)
self.size = self.size + 1
self[self.size] = v
end

function list:pop()
local popped = self[self.size]
self.size = self.size - 1
return popped
end

function list.new()
return setmetatable({size = 0}, {__index = list})
end

setmetatable(list, {__call = list.new})
end

--event lib
do
function event.new()
local event = {}
local funcs = {}

function event:connect(n, f)
funcs[n] = f
end

function event:destroy()
funcs = {}
function event.connect() end
end

return setmetatable(event, {
__call = function(t, ...)
for i,v in pairs(funcs) do
v(...)
end
end
})
end
end

--bit lib
do
function check_int(n)
if (n - math.floor(n) > 0) then
error("trying to use bitwise operation on non-integer!")
end
end

function to_bits(n)
check_int(n)
if (n < 0) then
return to_bits(bit.bnot(math.abs(n)) + 1)
end
local tbl = {}
local cnt = 1
while (n > 0) do
local last = n % 2
if (last == 1) then
tbl[cnt] = 1
else
tbl[cnt] = 0
end
n = (n - last) / 2
cnt = cnt + 1
end

return tbl
end

function tbl_to_number(tbl)
local n = table.getn(tbl)

local rslt = 0
local power = 1
for i = 1, n do
rslt = rslt + tbl[i] * power
power = power * 2
end

return rslt
end

function expand(tbl_m, tbl_n)
local big = {}
local small = {}
if (table.getn(tbl_m) > table.getn(tbl_n)) then
big = tbl_m
small = tbl_n
else
big = tbl_n
small = tbl_m
end
for i = table.getn(small) + 1, table.getn(big) do
small[i] = 0
end
end

function bit.band(m, n)
local tbl_m = to_bits(m)
local tbl_n = to_bits(n)
expand(tbl_m, tbl_n)

local tbl = {}
local rslt = math.max(table.getn(tbl_m), table.getn(tbl_n))
for i = 1, rslt do
if (tbl_m[i] == 0 or tbl_n[i] == 0) then
tbl[i] = 0
else
tbl[i] = 1
end
end

return tbl_to_number(tbl)
end

function bit.bor(m, n)
local tbl_m = to_bits(m)
local tbl_n = to_bits(n)
expand(tbl_m, tbl_n)

local tbl = {}
local rslt = math.max(table.getn(tbl_m), table.getn(tbl_n))
for i = 1, rslt do
if (tbl_m[i] == 0 and tbl_n[i] == 0) then
tbl[i] = 0
else
tbl[i] = 1
end
end

return tbl_to_number(tbl)
end

function bit.bnot(n)
local tbl = to_bits(n)
local size = math.max(table.getn(tbl), 32)
for i = 1, size do
if (tbl[i] == 1) then
tbl[i] = 0
else
tbl[i] = 1
end
end
return tblToNumber(tbl)
end

function bit.rshift(n, bits)
check_int(n)

local high_bit = 0
if (n < 0) then
-- negative
n = bit.bnot(math.abs(n)) + 1
high_bit = 0x80000000
end

for i = 1, bits do
n = n / 2
n = bit.bor(math.floor(n), high_bit)
end
return math.floor(n)
end

function bit.lshift(n, bits)
check_int(n)

if (n < 0) then
n = bit.bnot(math.abs(n)) + 1
end

for i = 1, bits do
n = n * 2
end
return bit.band(n, 0xFFFFFFFF)
end
end

--color lib
do
function color.hex(color)
local r = bit.band(bit.rshift(color, 16), 255)
local g = bit.band(bit.rshift(color, 8), 255)
local b = bit.band(color, 255)

return Color3.fromRGB(r, g, b)
end

color.background = color.hex(0x202020)
color.foreground = color.hex(0xEFEFEF)
color.border = color.hex(0x303030)
end

--prettytable
do
function getfullname(inst)
local tree = {}
while inst.Parent do
tree[#tree + 1] = ('"%s"'):format(inst.Name)
inst = inst.Parent
end
local reverse = {}
for i = #tree, 1, -1 do
reverse[#reverse + 1] = tree[i]
end
return ("%s[%s]"):format(inst.Name, table.concat(reverse, ']['))
end
local spaces = setmetatable({}, {
__index = function(t, k)
local g = rawget(t, k)
if g then
return g
else
local s = string.rep("    ", k)
rawset(t, k, s)
return s
end
end
})
local function isnormal(s)
if s:find("^[%a_][%w_]*$") then
return true
end
return false
end
function prettytable(tab, usetree, upvalues, maxlevel)
local stuff = {
tabs = {[tab] = "base"},
funcs = {},
level = 0,
tree = {"base"},
usetree = usetree or false,
upvalues = upvalues or false,
maxlevel = maxlevel or 18
}
local function map(tab, stuff)
local tree = stuff.tree
local tabs = stuff.tabs
local funcs = stuff.funcs
local maxlevel = stuff.maxlevel
local getupvalues = debug.getupvalues
local usetree = stuff.usetree
local upvalues = stuff.upvalues
local strOut, ind, retTab = '', '', {}

for i, v in pairs(tab) do
local it = type(i)
local t = type(v)
if it == 'string' then
if isnormal(i) then
ind = ('%s = '):format(i)
else
ind = ('["%s"] = '):format(i)
end
else
ind = ('[%s] = '):format(tostring(i), type(i))
end

tree[#tree + 1] = ind:sub(1, -4)
if usetree then
ind = ("%s = "):format(table.concat(tree, ''))
end

if t == 'table' then
if not tabs[v] then
tabs[v] = ("%s"):format(table.concat(tree, ''))
stuff.level = stuff.level + 1
if stuff.level <= maxlevel then
local inside = map(v, stuff)
local empty = inside == '<empty>'
inside = empty and '' or inside
local ls = empty and '' or spaces[stuff.level]
local rs = empty and '' or spaces[stuff.level - 1]
local nl = empty and '' or '\n'
strOut = ("%s{%s%s%s%s%s}"):format(ind, nl, ls, inside, nl, rs)
else
strOut = ("%s{...}"):format(ind)
end
stuff.level = stuff.level - 1
else
strOut = ("%s%s"):format(ind, tabs[v])
end
elseif t == 'function' and upvalues then
if not funcs[v] then
funcs[v] = ("%s"):format(table.concat(tree, ''))
stuff.level = stuff.level + 1
if stuff.level <= 18 then
local inside = map(getupvalues(v), stuff)
local empty = inside == '<empty>'
inside = empty and '' or inside
local ls = empty and '' or spaces[stuff.level]
local rs = empty and '' or spaces[stuff.level - 1]
local nl = empty and '' or '\n'
strOut = ("%s--[[upvalues]] {%s%s%s%s%s}"):format(ind, nl, ls, inside, nl, rs)
else
strOut = ("%s--[[upvalues]] {...}"):format(ind)
end
stuff.level = stuff.level - 1
else
strOut = ("%s%s"):format(ind, funcs[v])
end
elseif t == 'string' then
strOut = ('%s"%s"'):format(ind, v)
elseif t == 'userdata' then
local to = typeof(v)
if to == 'Instance' then
strOut = ("%s%s"):format(ind, getfullname(v))
elseif to == 'userdata' then
strOut = ("%s%s"):format(ind, tostring(v))
else
strOut = ("%s%s.new(%s)"):format(ind, typeof(v), tostring(v))
end
else
local vt = type(v)
strOut = ("%s%s%s"):format(ind, tostring(v), (vt == "function" and '' or (" --[[%s]]"):format(vt)))
end
retTab[#retTab + 1] = strOut

tree[#tree] = nil
end
return #retTab < 1 and '<empty>' or table.concat(retTab, (',\n%s'):format(spaces[stuff.level]))
end
return map(tab, stuff)
end
end

-- (remote, method, args, returns)
local received = event.new()

--metatable stuff
do
local gmt = getrawmetatable(game)
local readonly = setreadonly or make_writeable

readonly(gmt, false)

if not gmt.fireserver then
gmt.fireserver = Instance.new("RemoteEvent").FireServer
gmt.invokeserver = Instance.new("RemoteFunction").InvokeServer
gmt.o_index = gmt.__index
end
if not gmt.o_namecall then
gmt.o_namecall = gmt.__namecall
end
local o_index = gmt.o_index
local o_namecall = gmt.__namecall
local useindex = false

local fake = {
fireserver = gmt.fireserver,
invokeserver = gmt.invokeserver
}

if useindex then
function gmt.__index(t, k)
local method = k:lower()

if fake[method] then
return function(s, ...)
local out = {fake[method](s, ...)}

warn("start received event")
received(s, method, {...}, out)
warn("end received event")

return unpack(out)
end
end

return o_index(t, k)
end
else
function gmt.__namecall(u, ...)

local method = getnamecallmethod()


if method == "FireServer" or method == "InvokeServer" then
received(u, method, a, out)
end

return o_namecall(u, ...)
end
end
end

-- ui
do
local u2 = UDim2.new
local _new = Instance.new

local function new(class, name, props, parent)
local inst = _new(class)
inst.Name = name
if props then
for i, v in pairs(props) do
inst[i] = v
end
end
if parent then
inst.Parent = parent
end
return inst
end

local function frame(name, props, parent)
local temp = new("Frame", name, {
BackgroundColor3 = color.background,
BorderColor3 = color.border,
ClipsDescendants = true
})
for i,v in pairs(props) do
temp[i] = v
end
if parent then
temp.Parent = parent
end
return temp
end
local function button(name, props, parent)
local temp = new("TextButton", name, {
BackgroundColor3 = color.background,
BorderColor3 = color.border,
TextColor3 = color.foreground,
ClipsDescendants = true
})
for i,v in pairs(props) do
temp[i] = v
end
if parent then
temp.Parent = parent
end
return temp
end
local function label(name, props, parent)
local temp = new("TextLabel", name, {
BackgroundColor3 = color.background,
BorderColor3 = color.border,
TextColor3 = color.foreground,
ClipsDescendants = true
})
for i,v in pairs(props) do
temp[i] = v
end
if parent then
temp.Parent = parent
end
return temp
end
local function scroller(name, props, parent)
local temp = new("ScrollingFrame", name, {
BackgroundColor3 = color.background,
BorderColor3 = color.border,
TopImage = "rbxasset://textures/blackBkg_square.png",
MidImage = "rbxasset://textures/blackBkg_square.png",
BottomImage = "rbxasset://textures/blackBkg_square.png"
})
for i,v in pairs(props) do
temp[i] = v
end
if parent then
temp.Parent = parent
end
return temp
end
local function textbox(name, props, parent)
local temp = new("TextBox", name, {
BackgroundColor3 = color.background,
BorderColor3 = color.border,
TextColor3 = color.foreground,
MultiLine = true,
ClearTextOnFocus = false,
TextXAlignment = "Left",
TextYAlignment = "Top",
Text = "",
TextWrapped = true,
ClipsDescendants = true
})
for i,v in pairs(props) do
temp[i] = v
end
if parent then
temp.Parent = parent
end
return temp
end

local main = new("ScreenGui", "fsg")

ui.dragbox = frame("drag", {
Size = u2(0, 496, 0, 21),
Position = u2(0.5, -252, 0.5, -177),
Draggable = true,
Active = true,
Transparency = 1,
ClipsDescendants = false
}, main)
ui.backboard = frame("back", {
Size = u2(0, 500, 0, 350),
Position = u2(0, -2, 0, -2)
}, ui.dragbox)

-- backboard
ui.bodybox = frame("body", {
Size = u2(0, 496, 0, 322),
Position = u2(0, 2, 0, 26),
Active = true
}, ui.backboard)
ui.titlebox = frame("titlebar", {
Size = u2(1, -4, 0, 21),
Position = u2(0, 2, 0, 2)
}, ui.backboard)

-- titlebox
ui.minibtn = button("minimize", {
Size = u2(0, 17, 0, 17),
Position = u2(1, -19, 0, 2),
Text = "-"
}, ui.titlebox)
ui.title = label("title", {
Size = u2(0, 110, 0, 17),
Position = u2(0.5, -65, 0, 2),
Text = "FE Script Generator"
}, ui.titlebox)

-- bodybox
ui.events = scroller("eventcontainer", {
Size = u2(0, 200, 0, 318),
Position = u2(0, 2, 0, 2)
}, ui.bodybox)
ui.code = textbox("code", {
Size = u2(0, 289, 0, 294),
Position = u2(0, 205, 0, 2)
}, ui.bodybox)
ui.copycode = button("copy", {
Size = u2(0, 80, 0, 21),
Position = u2(1, -82, 1, -23),
Text = "Copy Script"
}, ui.bodybox)

--functions
local toadd = list()
local added = false
function ui.sortevents()
local li = 0
for i,v in pairs(ui.events:GetChildren()) do
v.Position = u2(0, 2, 0, (i - 1) * 22 + i * 2)
li = i
end
ui.events.CanvasSize = u2(0, 187, 0, (li) * 22 + (li) * 2 + 1)
ui.events.CanvasSize = u2(0, 0, 0, (li) * 22 + (li) * 2 + 1)
end

local ecount = 0
function ui.addevent(remote, method, args)
ecount = ecount + 1
local n = frame("event_" .. ecount, {
Size = u2(0, 183, 0, 21),
}, ui.events)
local t = label("title", {
Size = u2(0, 162, 0, 21),
Text = remote.Name
}, n)
local sel = button("add", {
Size = u2(0, 21, 0, 21),
Position = u2(1, -21, 0, 0),
Text = "S"
}, n)
sel.MouseButton1Click:connect(function()
local code = sbuilder()
code:append(("local remote = %s\n"):format(getfullname(remote)))
code:append(("local %s\n"):format(prettytable({args = args})))
code:append(("remote:%s(unpack(args))\n"):format(method))
ui.code.Text = code:concat()
end)
ui.sortevents()
end

function ui.requestaddevent(remote, method, args)
toadd:push({remote, method, args})
added = true
end

--event stuffs
do
--- titlebar ---
local minimized = false
ui.minibtn.MouseButton1Click:connect(function()
minimized = not minimized
local nsize = minimized and u2(0, 138, 0, 25) or u2(0, 500, 0, 350)
local dsize = minimized and u2(0, 134, 0, 21) or u2(0, 496, 0, 21)
local npos = ui.dragbox.Position + (u2(0, minimized and 362 or -362, 0, 0))

ui.backboard:TweenSize(nsize, "Out", "Quad", 0.2)
ui.dragbox:TweenSizeAndPosition(dsize, npos, "Out", "Quad", 0.2)
end)

--- body ---
ui.copycode.MouseButton1Click:connect(function()
(setclipboard or Synapse.CopyString and function(s)Synapse:CopyString(s)end or function()end)(ui.code.Text)
end)
end

spawn(function()
while true do
repeat wait() until added
for i = 1, toadd.size do
local v = toadd:pop()
ui.addevent(v[1], v[2], v[3])
end
added = false
end
end)

main.Parent = game.CoreGui
end

received:connect("requestaddevent", ui.requestaddevent)
