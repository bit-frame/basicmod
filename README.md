# Introduction to Basic Moderation Tools 2.4

Basic Moderation Tools is a fully open source admin module I built from the ground up, containing more than 30 commands to help you moderate your player base. It allows for creating custom commands, being able to interface with our simple API to simplify your scripts for different types of commands. Please note that BasicModTools has alot of bugs that I will try my best to remove. It will remain open-source for now until I crack down on all the bugs and release all the good features an admin module would need.

# Important!

Some features in BMT2.4 havent been released yet due to the amount of time I have to make BMT2.4, these features will be released later when I have enough time. The features that havent been released yet are listed below:
- NotifyStaff
- Logs, Chatlogs, Banlogs (UI)
- BanAPI (Currently working on integrating it with Roblox's new api for banning)

# Installing BMT2.4

To get started using Basic Moderation Tools 2.0, start by downloading the source code in the files section, named BasicModerationTools2.4. You will need to update a couple of settings before using the admin module.

# How to Setup BMT2.4

1. To get started, you will need to import the module by right clicking on the explorer and inserting BMT2.4 in.
2. Ungroup the folder '(Ungroup) Basic Moderation Tools 2.4 in ServerScriptService.
3. Drag all the folders into their respective locations, indicated by the folder name. Keep the module script in ServerScriptService (Important: Do not change the folder names if you don't know what your doing!)
4. Open up 'Basic Moderation Tools 2.0' (Module Script) and insure all the settings you want for your game are correct. This is important for command customization. (Note: You are automatically given the owner rank as the owner of the game, you do not need to add yourself into the admin table)
5. Join the game and BMT2.4 will load and start up.

# Commands
1. res (plr/me/others/all) - Resets a players avatar
2. ref (plr/me/others/all) - Refreshes a players avatar
3. speed (plr/me/others/all) (amount) - Gives a player a specified amount of walkspeed
4. tp (plr/me/all) (plr/me/all) - Teleports a player(s) to another player(s)
5. to (plr) - Teleports the executor to a player
6. bring (plr/all) - Teleports a player(s) to the executor
7. kick (plr/others/all) (reason) - Kicks a player(s) with a optional reason
8. ff (plr/me/others/all) - Gives a forcefield to a player(s)
9. unff (plr/me/others/all) - Removes a player(s) forcefield
10. m (message) - Announces a message to the entire server
11. sm (message) - Announces a server message to the entire server
12. h (message) - Hints a message to the entire server
13. sh (message) - Server Hints a message to the entire server
14. sit (plr/me/others/all) - Sits a player(s)
15. unsit (plr/me/others/all) - Unsits a player(s)
16. jump (plr/me/others/all) - Makes a player(s) jump
17. freeze (plr/me/others/all) - Freezes a player(s)
18. unfreeze (plr/me/others/all) - Unfreezes a player(s)
19. shutdown (reason) - Kicks all players with a optional reason
20. slock (reason) - Locks the server so new users cannot join, displays a server message to announce the change
21. unslock (reason) - Unlocks the server so new users can join, displays a server message to announce the change
22. pin (message) - Pins a message to the top the screen for all users that are in the game
23. clr - Cleans all pins
24. sp - Pins a server message to the top the screen for all users that are in the game
25. mute (plr/others) (reason) - Mutes a player(s) chat so they are unable to chat in-game
26. unmute (plr/others) - Unmutes a player(s) so they are able to chat in-game
27. blur (plr/me/others/all) - Blur's a player(s) screen
28. unblur (plr/me/others/all) - Unblur's a player(s) screen
29. god (plr/me/others/all) - Makes a player(s) health to math.huge()
30. ungod (plr/me/others/all) - Makes a player(s) health return to 100
31. invis (plr/me/others/all) - Makes a player(s) avatar invisible
32. vis (plr/me/others/all) - Makes a player(s) avatar visible
33. headless (me) - Makes a player(s) head invisible
34. unheadless (me) - Makes a player(s) head visible
35. korblox (me) - Makes a player(s) right leg invisible
36. unkorblox (me) - Makes a player(s) right leg visible
37. ban (plr) (reason) - Bans a player from the server with a reason displayed in the kick message
38. unban (plr) - Unbans a player from the server

# Custom Commands

To get started creating custom commands, open up the config script and go to the very bottom of the module script where it says 'CustomCommands'. You will see an example command that you'll be able to execute. When you execute the command in-game, you should see in the console, it printed 'You fired an owner-only custom command'!

1. To create a custom command, copy and paste the example custom commands structure. If you don't have the command structure, you can copy the code from the 'CustomCommandConfig' file.
2. Edit the commands config:
  Name: The name that you want to use to execute the command.
  Enabled: Is the command enabled?
  Allowed: Who's allowed to execute the command? (Note: If you pick a role e.g. Administrator, all the roles above Administrator (Superadmin, Owner) will be able to use the command.
  NotifyStaff: Do you want to notify staff whenever the command is executed?
  LogInConsole: Do you want to log the command execution in the console?
  ScriptToExecute: The script that you want to execute whenever the custom command is executed, the custom command script must be located in Basic Moderation Tools 2.0 > Custom Scripts for BMT to be able     to execute.
3. Navigate to Basic Moderation Tools 2.4 > Custom Scripts and create a new module script, name it what you put in the 'ScriptToExecute' area of the config. In the script, you will need to paste in the       template, located in the files section named 'ScriptExecuteTemplate.
4. Edit the function to do what you want the custom command to do. If you want to use the BMT2.4 API in your custom command, a full documentation is available in the api file. You can also rename the          variable custom to whatever you like, just ensure that all the variables are changed to the updated name. (Important: Please do not change the :Run() function to anything else, as this is what the          CustomCommand API uses to execute the script) (Note: Variables are currently not available in the CustomCommand API, this will be released sometime in the future.
5. Your custom command is completed! Try running it in-game to try it out!

# Using the BMTv3 API

BMT2.4 comes with an API that your custom scripts can use simply by loading the API module.
You can load APIv3 with this line of code:
```lua
local bmtAPI = require(game.ServerScriptService["Basic Moderation Tools 2.0"]["BasicMod Scripts"]["BasicMod V3 API"])
```
After loading the API, you can use these functions to execute various BMT2.4 commands in a script:
```lua
:WhitelistCheck(plr) -- Checks if a player is in the whitelist table
:GetAdminLevel(plr) -- Returns the admin level of a player (Moderator, Administrator, etc .. )
:GetAdminType(plr) -- Returns the admin level number of a player (1, 2, 3, etc .. )
:GetGameOwner(plr) -- Returns true or false on if a player is the game owner
:BlacklistCheck(plr) -- Checks whether a player is blacklisted and kicks them and notifies staff if so
:Kick(plr, reason, admin) -- Kicks a player with the kick message displaying the reason, admin, and an optional reason
:ConsoleLog(message) -- Logs a message in the console using BasicMod watermarks
:NotifyStaff(message) -- Notifies Moderator+ in the game using an announcement (Note: You will need to compile the message you send as this feature only       takes in one variable
:IsTargetInGame(target) -- Returns a boolean of whether a specified player is in the game
:Reset(plr) -- Resets a player
:Refresh(plr) -- Refreshes a player
:Speed(plr, amount) -- Gives a player walkspeed using the amount variable
:Teleport(target, destination) -- Teleports a player (target) to another player (destination)
:ForceField(plr) -- Gives a player an forcefield
:UnForceField() -- Removes a players forcefield
:Message(plr, message, amount) -- Announces a message to the server, plr: The admin name, message: The message to display, amount: How long the message is displayed on the screen
:PMessage(plr, admin, message, amount) -- Announces a message to a specified player (plr), the parameters are the same as :Message()
:PSMessage(plr, admin, message, amount) -- Announces a server message to a specified player. Leave admin as 'Server', the parameters are the same as :Message()
:Hint(admin, message, amount) -- Hints a message to the server, parameters are the same as :Message()
:PHint(plr, admin, message, amount) -- Hints a message to a specified player, parameters are the same as :Message()
:PSHint(plr, admin, message, amount) -- Server Hints a message to a specified player, parameters are the same as :PSMessage()
:Sit(plr) -- Sits a player
:Unsit(plr) -- Unsits a player
:Jump(plr) -- Makes a player jump
:Freeze(plr) -- Freezes a player
:Unfreeze(plr) -- Unfreezes a player
:Shutdown(admin, reason) -- Shuts down the server with a admin and reason parameter (The admin parameter can be anything)
:Slock(admin, reason) -- Slocks the server
:Unslock() -- Unslocks the server
:IsSlocked() -- Returns a boolean value of whether the server is slocked or not
:CheckSlock(plr) -- Checks if the server is slocked, if so the given player parameter will be kicked from the server (MainModule use)
:Pin(admin, message) -- Pins a message to the top of the screen for all players in the server
:Clear() -- Clears all pinned messages
:Mute(plr, reason, admin) -- Mutes a player, displays a message to the target showing the reason and the admin
:Unmute(plr, admin) -- Unmutes a player, showing the admin in a :PMessage()
:Blur(plr) -- Blurs a players screen
:Unblur(plr) -- Unblurs a players screen
:God(plr) -- Makes a players health math.huge()
:Ungod(plr) -- Makes the players health go to the default 100
:Invisible(plr) -- Makes a players avatar invisible
:Visible(plr) -- Makes a players avatar visible
:Headless(plr) -- Gives headless to a player
:Unheadless(plr) -- Removes the headless effect on a player
:Korblox(plr) -- Gives korblox to a player
:Unkorblox(plr) -- Removes the korblox effect on a player
:Ban(name, reason, banDate, mdoerator) -- Bans a player from the server, kick message showing: Reason, Admin, and the bandate
:Unban(plr) -- Unbans a player from the server
:IsBanned(plr) -- Returns a boolean of whether the specified player is banned from the server
:CheckBan(plr) -- Checks if a player is banned, if so than they are kicked from the server
```
