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

# Loading the BMTv3 API

BMT2.4 comes with an API that your custom scripts can use simply by loading the API module.
You can load APIv3 with this line of code:
```lua
local bmtAPI = require(game.ServerScriptService["Basic Moderation Tools 2.0"]["BasicMod Scripts"]["BasicMod V3 API"])
```

# API Docs
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
