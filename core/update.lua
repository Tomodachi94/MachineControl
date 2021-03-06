--MachineControlUpdate by Tomodachi94
--Feel free to use this for commerical and non-commercial use
--If you modify it, please give credit.
--MachineControl Pastebin: https://pastebin.com/TfbP996B
--Lock program Pastebin: https://pastebin.com/LhAt2bPW
--Last modified: 7/19/2020
--By: Tomodachi94
--Fixed/Updated by: Rolcam
--Pastebin: (HhBB9Grg - Rolcam)
--GitHub (report issues here): https://github.com/Tomodachi94/MachineControl/
term.clear()
term.setCursorPos(1,1)
term.setTextColor(colors.cyan)
print("This is the MachineControl updater/installer.")
print("Would you like to add built-in security to your MachineControl? (y/n)")
security = read()
if security == "y" then
  term.clear()
  term.setCursorPos(1,1)
  term.setTextColor(colors.yellow)
  print("This will override 2 files: \"startup.lua\" and \"machinecontrol.lua\", and reset the passwords to their defaults. Proceed? (y/n)")
  confirm = read()
  if confirm == "y" then
    term.clear()
    term.setCursorPos(1,1)
    term.setTextColor(colors.green)
    print("Installing security to startup.lua...")
    shell.run("delete","startup")
    shell.run("pastebin get LhAt2bPW startup.lua")
    print("Install success!")
    print("Installing MachineControl to MachineControl...")
	shell.run("delete", "machinecontrol")
	shell.run("delete machinecontrol.lua")
    shell.run("pastebin", "get", "TfbP996B", "machinecontrol.lua")
    term.setTextColor(colors.white)
    print("You will now need to edit startup.lua, and change the password. Then, run reboot and the program should work as expected. (Report errors at GitHub)")
  elseif confirm == "n" then
    term.clear()
    term.setCursorPos(1,1)
    term.setTextColor(colors.red)
    print("Installation cancelled. Rerun to start it again.")
  else
    term.clear()
    term.setCursorPos(1,1)
    term.setTextColor(colors.red)
    print("Invalid input! Cancelling...")
    print("Rerun this program to start the installation again.")
  end
elseif security == "n" then
  term.clear()
  term.setCursorPos(1,1)
  term.setTextColor(colors.yellow)
  print("This installer/updater will override 1 file: \"machinecontrol.lua\". Proceed? (y/n)")
  confirm = read()
  if confirm == "y" then
    term.clear()
    term.setTextColor(colors.green)
    term.setCursorPos(1,1)
    print("Installing...")
    shell.run("delete","machinecontrol")
    shell.run("delete machinecontrol.lua")
    shell.run("pastebin get TfbP996B machinecontrol.lua")
    print("Install success!")
  elseif confirm == "n" then
    term.clear()
    term.setCursorPos(1,1)
    term.setTextColor(colors.red)
    print("Installation cancelled. Rerun the program to start it again.")
  end
end
