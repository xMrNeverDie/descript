-- drmon installation script
--
--

local libURL = "https://raw.githubusercontent.com/xMrNeverDie/descript/master/lib/f.lua?token=AJYAOJNY6RTBRIKTHJNJRMC64J77I"
local startupURL = "https://raw.githubusercontent.com/xMrNeverDie/descript/master/Script1.lua?token=AJYAOJPEMSHXTTOBK3XQ2TC64KAE4"
local lib, startup
local libFile, startupFile

fs.makeDir("lib")

lib = http.get(libURL)
libFile = lib.readAll()

local file1 = fs.open("lib/f", "w")
file1.write(libFile)
file1.close()

startup = http.get(startupURL)
startupFile = startup.readAll()


local file2 = fs.open("startup", "w")
file2.write(startupFile)
file2.close()
