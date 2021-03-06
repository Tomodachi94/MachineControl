os.pullEvent = os.pullEventRaw
--Title: TangentLock (Optimized for MachineControl at https://pastebin.com/TfbP996B)
--Version: Ver. 3
--Last Revised: 7/25/2020
--Last Revised By: Tomodachi94
--Author: TangentDelta (alias Hydrogen), adapted for MachineControl by Tomodachi94
--Platform: ComputerCraft LUA Virtual Machine
--Notes: Please don't claim this as your own, give me credit if you use this!

--Variables (change to suit)----------------------
code = "truthhurts" --the password to "unlock" it
debug = "truthhurtsdebug" --password to enter the terminal
output = "left" --the side that will send out the "unlock" signal
tries = 5 --how many times you can guess before it ends your session
pulsout = 5 --how long you want the redstone to be on for. I think it's in seconds.
hax = false --set to true if you want it to send out a redstone signal if password is wrong
haxout = "right" --side that you want the "incorrect password" signal to be on

--Main----------------------
print "Password, please."
write "Password: "
for triescnt = 1,tries,1 do
password = read("*")
if password == debug then
  print "Debug Mode Activated"
  break
end
  if password == (code) then
   print "Access Granted!"
   shell.run("machinecontrol.lua")
   break
  else
        if hax then
        print "Acces Denied! \nLaunching Anti-Grief Security.."
        print "Stand still.. This won't hurt : )"
        redstone.setOutput(haxout, true)
        sleep(pulsout)
        redstone.setOutput(haxout, false)
        os.shutdown()
        else
        print ("Access Denied. Attempts left: ",tries-triescnt)
        write "Password: "
   end
  end
if triescnt == tries then
  print "Maximum Attempts Reached. \nJust who the heck are you?"
  sleep(2)
  print "System is shutting down.."
  sleep(1)
  os.shutdown()
  else
end
end
