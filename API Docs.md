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
```
local bmtAPI = require(game.ServerScriptService["Basic Moderation Tools 2.0"]["BasicMod Scripts"]["BasicMod V3 API"])
```

# API Docs

1. :WhitelistCheck(plr) - Checks if a player is in the whitelist table
2. :GetAdminLevel(plr) - Returns the admin level of a player (Moderator, Administrator, etc .. )
3. :GetAdminType(plr) - Returns the admin level number of a player (1, 2, 3, etc .. )
4. :GetGameOwner(plr) - Returns true or false on if a player is the game owner
5. :BlacklistCheck(plr) - Checks whether a player is blacklisted and kicks them and notifies staff if so
6. :Kick(plr, reason, admin) - Kicks a player with the kick message displaying the reason, admin, and an optional reason
7. :ConsoleLog(message) - Logs a message in the console using BasicMod watermarks
8. :NotifyStaff(message) - Notifies Moderator+ in the game using an announcement (Note: You will need to compile the message you send as this feature only       takes in one variable
