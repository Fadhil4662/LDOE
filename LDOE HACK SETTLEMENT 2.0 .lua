--What are u doing here 
target_process="zombie.survival.craft.z"
target_name="Last Day On Earth: Survival"
arch=gg.getTargetInfo()
if gg.getTargetPackage() ~= target_process then
gg.alert("This script was written for "..target_name.." ( "..target_process.." ) but you are attached to "..arch.label.." ( "..gg.getTargetPackage().." ), Attach to the correct process and try again.")
os.exit()
end

if arch.x64 == true then
 offset=44
 offset1=40
 else
 offset=22
 end

gg.alert("Hack Settlement")
function HOME()
MN = gg.choice({
    "Hack New Base",
    "Guide",
    "Exit",
}, nil, "  ")
if MN == nil then
else
    if MN == 1 then HackSettlement()end
    if MN == 2 then Guide()end
if MN == 3 then 
print("Thank u to try my script :]")
gg.skipRestoreState()
gg.setVisible(true)
os.exit()
end
while true do
    if gg.isVisible(true) then
    LDOE = 1
    gg.setVisible(false)
end
if LDOE == 1 then
HOME()
end
end
end
LDOE = -1
end

function HackSettlement()
HACK = gg.multiChoice({
    "Floor Level 2",
    "Floor Level 3",
    "Wall Level 2",
    "Windows Level 2",
    "Door Level 2",
    "Back",
}, nil, "  ")

if HACK == nil then
else
    if HACK[1] == true then Floor_2()end
if HACK[2] == true then Floor_3()end
if HACK[3] == true then Wall_2()end
if HACK[4] == true then Windows_2()end
if HACK[5] == true then Door_2()end
if HACK[6] == true then HOME()end
end
LDOE = -1
end

function Floor_2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("Q 15 00 00 00 \"new_base_foundation_1", 1, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("21", 1, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100000)
local t1=gg.getResults(1)
gg.loadResults({{address=t1[1].address+offset, flags=4}})
gg.getResults(1)
gg.editAll("50", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Floor 2")
end

function Floor_3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("Q 15 00 00 00 \"new_base_foundation_2", 1, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("21", 1, false, gg.SIGN_EQUAL, 0, -1, 0)
local t1=gg.getResults(1)
gg.loadResults({{address=t1[1].address+offset, flags=4}})
gg.getResults(1)
gg.editAll("51", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Floor 3")
end

function Wall_2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("Q 16 00 00 00 \"new_base_simple_wall_1", 1, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("22", 1, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100000)
local t1=gg.getResults(10)
gg.loadResults({{address=t1[1].address+offset, flags=4}})
gg.getResults(10)
gg.editAll("3276895", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Wall 2")
end

function Windows_2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("Q 16 00 00 00 \"new_base_window_wall_1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("22", 1, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100000)
local t1=gg.getResults(1)
gg.loadResults({{address=t1[1].address+offset, flags=4}})
gg.getResults(1)
gg.editAll("3276895", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Windows 2")
end

function Door_2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20;6619246;6226039;6357090;6619251;6553695;7274607;6226034;6357111;7077996;3211359::41", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("3211359", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(100000)
gg.editAll("3276895", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Door 2")
end

function Guide()
gg.alert("Choose 1 or more after that wait until done, after done go to map and back to settlement, after that u can see the building bcm higher level. *NOTE* this gonna reset after u rejoin.")
end

StartBypass = gg.alert("Welcome To Hack Settlement", "[Next]", "[Exit]")
if StartBypass == 1 then HOME()end
if StartBypass == 2 then gg.setVisible(true)
print("why you exit >:(") os.exit()end

function HOME()

gg.skipRestoreState()
gg.setVisible(true)
os.exit()
end
while true do
    if gg.isVisible(true) then
    LDOE = 1
    gg.setVisible(false)
end
if LDOE == 1 then
HOME()
end
end
