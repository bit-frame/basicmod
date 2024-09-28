# Introduction

Basic Moderation Tools (2.4) is a fully open source admin module, currently containing 38 executable in-game commands. It features admin heirachies, Custom Command Integration, Flexible Command Configuration, Donor Commands, Command Logging, and a API (APIv3) that can be loaded in a custom script and use all of Basic Moderation Tools' functions.

# Getting Started

To install Basic Moderation Tools, find the newest version in the files section on github and download it. In Roblox Studio import the module by right clicking on the ``Explorer`` and pressing ``Insert from file``

Alternative Installation Method: Get Basic Moderation Tools in the Roblox Asset Shop and insert it into roblox via the Toolbox. Download [Basic Moderation Tools](https://create.roblox.com/store/asset/84769302713927/241-Basic-Moderation-Tools?viewFromStudio=true&keyword=&searchId=f780f146-da98-41e3-a6c4-1f2006f77427) via Asset Shop.

> Only stable versions of Basic Moderation Tools will be able to be downloaded from the Roblox Asset Shop, which are the versions that have been tested and contain minimal bugs. Unstable versions that have new features and may contain bugs can be found in the files section of this Repo.

You will need to ungroup the model and move all the folders to their respective positions, shown below:
```
3.0 ReplicatedStorage > Replicated Storage
3.0 SoundService > Sound Service
3.0 StarterGui > StarterGui
3.0 Blur > Lighting
Basic Moderation Tools 2.0 > ServerScriptService
```
Open ``Basic Moderation Tools 2.0`` and configure the admin module settings to what your game needs.

> You do not need to enter your username into the admin table, as the game owner is automatically ranked upon joining the game.

After configuring BMT, join the game and try out some of what BMT has to offer!

# Commands
```
res (plr/me/others/all) - Resets a player's avatar
ref (plr/me/others/all) - Refreshes a player's avatar
speed (plr/me/others/all) (amount) - Gives a player a specified amount of walkspeed
tp (plr/me/all) (plr/me/all) - Teleports a player(s) to another player(s)
to (plr) - Teleports the executor to a player
bring (plr/all) - Teleports a player(s) to the executor
kick (plr/others/all) (reason) - Kicks a player(s) with an optional reason
ff (plr/me/others/all) - Gives a forcefield to a player(s)
unff (plr/me/others/all) - Removes a player(s) forcefield
m (message) - Announces a message to the entire server
sm (message) - Announces a server message to the entire server
h (message) - Hints a message to the entire server
sh (message) - Server Hints a message to the entire server
sit (plr/me/others/all) - Sits a player(s)
unsit (plr/me/others/all) - Unsits a player(s)
jump (plr/me/others/all) - Makes a player(s) jump
freeze (plr/me/others/all) - Freezes a player(s)
unfreeze (plr/me/others/all) - Unfreezes a player(s)
shutdown (reason) - Kicks all players with an optional reason
slock (reason) - Locks the server so new users cannot join, displays a server message to announce the change
unslock (reason) - Unlocks the server so new users can join, displays a server message to announce the change
pin (message) - Pins a message to the top of the screen for all users in the game
clr - Cleans all pins
sp - Pins a server message to the top of the screen for all users in the game
mute (plr/others) (reason) - Mutes a player(s) so they cannot chat in-game
unmute (plr/others) - Unmutes a player(s) so they can chat in-game
blur (plr/me/others/all) - Blurs a player(s) screen
unblur (plr/me/others/all) - Unblurs a player(s) screen
god (plr/me/others/all) - Makes a player(s) health infinite
ungod (plr/me/others/all) - Resets a player(s) health to 100
invis (plr/me/others/all) - Makes a player(s) avatar invisible
vis (plr/me/others/all) - Makes a player(s) avatar visible
headless (me) - Makes a player(s) head invisible
unheadless (me) - Makes a player(s) head visible
korblox (me) - Makes a player(s) right leg invisible
unkorblox (me) - Makes a player(s) right leg visible
ban (plr) (time: days) (reason) - Bans a player from the server with a reason displayed in the kick message
pban (plr) (reason) - PBans a player from the server with a reason displayed in the kick message
unban (plr) - Unbans a player from the server
```

# AutoMod

Basic Moderation Tools contains a Anticheat/Mod that automatically moderates certain parts of your server. The currently available things that AutoMod can Moderate are listed below:

```
Chat Spam - When a player spams in the Roblox Chat, AutoMod can take action and execute a command chosen by the developer in the configuration script.
Speed Exploits - When a player's walkspeed is above the default, AutoMod can execute a command chosen by the developer, like in Chat Spam.
```

To configure AutoMod, navigate to ``Basic Moderation Tools 2.0`` and scroll down to ``AutoMod``. There you will see the available and stable features that AutoMod can do. The configuration for each of the AutoMod features should look the same, listed below:

```
Enabled - Is the AutoMod feature enabled
NotifyStaff - Should AutoMod notify staff when a player gets flagged
LogInConsole - Should AutoMod log what happens in the console
AutoPunish > Enabled - Should AutoMod automatically take action without an admins intervention
AutoPunish > PunishmentType - The type of punishment that AutoMod should execute, listed below
```

As said above, if you are using AutoPunish, there is a field called ``PunishmentType``. You can choose out of these five actions, listed below:

```
'kick' - Kicks the player with a reason
'mute' - Mute the player, making them unable to Chat
'ban' - Ban the player from the game (30-day ban) with a reason
'pban' - PBan the player from the game with a reason
'custom' - Use the AutoMod API to make a custom punishment, explained in the next article
```

> When typing the ``PunishmentType``, please ensure that you type it in all lowercase, otherwise AutoMod will not be able to execute the punishment.

Happy tinkering with AutoMod!

# AutoMod: Creating a Custom Punishment

AutoMod has an API that allows it to execute custom punishments. This article will show you how to correctly use this API.

To get started, navigate to ``Basic Moderation Tools 2.0`` and scroll to ``AutoMod`` and ensure that whatever punishment you pick to use a custom punishment has in the ``PunishmentType``: 'custom', otherwise this will not work.

Next, navigate to ``Basic Moderation Tools 2.0 > Custom Scripts > AutoMod > CustomPunishment``. Open this file. You should see various functions with 'AutoMod' as the variable, and the punishment type that you put as the name of the function (e.g. AutoMod:PunishmentFlag). You don't need to worry about the other functions, those are for the other punishments that also have this API enabled in them.

Navigate to the AutoMod flag type, you should see something like this (This is the SpamFlag function):

```lua
function AutoMod:SpamFlag(plr)
   if bmtAPI:IsTargetInGame(plr) then
      print(plr.Name.." is spamming the chat (AUTOMOD CUSTOM)")
   end
end
```
Above is the stock code that is in the function, when the SpamFlag is triggered by a player and the AutoMod PunishmentType is set to 'custom', it will fire this function and will print ``(plr) is spamming the chat (AUTOMOD CUSTOM)``

Your ready to start creating your custom punishment for the Flag type! Now, the AutoMod API gives you access to the player object, allowing you to control/punish the player as you want. APIv3 is also available for you to create your custom punishment in this script, named ``bmtAPI``. An example of a custom punishment that you could make is resetting the player. If the AutoMod Flag is triggered, it will reset the player. The code is shown below for ``SpamFlag``:

```lua
function AutoMod:SpamFlag(plr)
   if bmtAPI:IsTargetInGame(plr) then
       bmtAPI:Reset(plr)
   end
end
```

This code uses the APIv3 ``:Reset()`` function to reset the player when they spam in the Chat.

That's it! You've successfully learnt how to use the AutoMod API to create a custom punishment that executes when a player gets Flagged!

# Custom Commands

To get started creating a custom command, open up ``Basic Moderation Tools 2.0`` and scroll to the bottom, where it says ``CustomCommands``.

Paste in under the example command this template:
```lua
{
    Name = "exmaplecommand"; -- The command name you want to use to execute
    Enabled = true; -- Is the command enabled
    Allowed = "Owner"; -- Who is allowed to use the command (Heirachy)
    NotifyStaff = false; -- Notify staff of the command execution
    LogInConsole = true; -- Log the command execution in the console
    ScriptToExecute = "CustomExecutionScript"; -- The script you want the custom command API to execute. The file to execute must be located in Custom Scripts
};
```
After that, navigate to ```Basic Moderation Tools 2.4 > Custom Scripts``` and create a new module script, name it what you put in the ```ScriptToExecute``` area of the custom command configuration.

In the module script, paste in this template to get you started, you will need to edit the script inside the function for what you would like your custom command to do, an example that's already there is the print statement that fires whenever you execute the custom commmand:
```lua
local bmtExecute = {}

function bmtExecute:Run()
  print("Hello World")
  -- What the custom command should do
end

return bmtExecute
```
That's it! You've successfully created a custom command using the CustomCommands API!

# Getting Started with APIv3

Do you want to be able to use BMT2.4's API to execute it's commands? Well, you in luck! BMT2.4 comes with an API that your custom scripts can use simply by loading the API module (Anyone of your scripts can have access to all of the BMT API by completing this tutorial).
You can load APIv3 with this line of code:
```lua
local bmtAPI = require(game.ServerScriptService["Basic Moderation Tools 2.0"]["BasicMod Scripts"]["BasicMod V3 API"])
```
After loading the API, you can use all of BMT's functions to execute BMT2.4 commands in any script you want. A full documentation for all of APIv3's functions can be found in the next article.

> The examples below don't have the ``bmtAPI`` variable, which ``requires()`` the API. You need to have the variable in order to use the API.

# APIv3: WhitelistCheck()

Function: ``WhitelistCheck(plr)`` <br>
Purpose: Checks if a player is in the whitelist table, if not it kicks them from the server. This is a ``BMT MainModule Function`` and isn't really intended to be used in Custom Scripts <br>

# APIv3: GetAdminLevel()

Function: ``:GetAdminLevel(plr)``<br>
Purpose: Returns the admin level of a player (Moderator, Administrator, etc .. )

Example:

```lua
game.Players.PlayerAdded:Connect(function(plr)
   local adminRank = bmtAPI:GetAdminLevel(plr)
   print(plr.Name.."'s admin rank is "..adminRank)
end)
```

# APIv3: GetAdminType(plr)

Function: ``:GetAdminType(plr)`` <br>
Purpose: Returns the admin level number of a player (1, 2, 3, etc .. )

Example:

```lua
game.Players.PlayerAdded:Connect(function(plr)
   local adminRankNumber = bmtAPI:GetAdminType(plr)
   print(plr.Name.."'s admin rank number is "..adminRankNumber)
end)
```

# APIv3: GetGameOwner()

Function: ``:GetGameOwner(plr)``<br>
Purpose: Returns true or false on if a player is the game owner

```lua
game.Players.PlayerAdded:Connect(function(plr)
   local isGameOwner = bmtAPI:GetGameOwner(plr)
   if isGameOwner then
      print(plr.Name.." is the game owner!")
   else
      print(plr.Name.." isn't the game owner!")
   end
end)
```

# APIv3: BlacklistCheck()

Function: ``:BlacklistCheck(plr)`` <br>
Purpose: Checks whether a player is in the blacklist table. If so, it kicks them. This is a ``BMT MainModule Function`` and isn't really intended to be used in Custom Scripts

# APIv3: Kick()
Function: ``:Kick(plr, reason, admin)`` <br>
Purpose: Kicks a player with the kick message displaying the reason, admin, and an optional reason

Example:
```lua
local PersonToKick = "ReallyBadPerson"

game.Players.PlayerAdded:Connect(function(plr)
   if plr.Name == PersonToKick then
      bmtAPI:Kick(plr, "You are a bad person!", "Server")
   end
end)
```

# APIv3: ConsoleLog()

Function: ``:ConsoleLog(message)`` <br>
Purpose: Prints a message in the console, BMT style

Example:
```lua
game.Players.PlayerAdded:Connect(function(plr)
   bmtAPI:ConsoleLog("Hello, "..plr.Name)
end)
```

# APIv3: NotifyStaff()

> This API Function is currently not released and can only be used in Unstable Versions of BMT

Function: ``:NotifyStaff(message)`` <br>
Purpose: Notifies Moderator+ in the game using an announcement that displays a message

Example:
```lua
local badPerson = "AReallyBadPerson"

game.Players.PlayerAdded:Connect(function(plr)
   if plr.Name == badPerson then
      bmtAPI:NotifyStaff("A really bad person joined the game!")
   end
end)
```

# APIv3: IsTargetInGame()

Function: ``:IsTargetInGame(plr)`` <br>
Purpose: Returns true of false if the player specified is in the game. This is a ``BMT MainModule Function`` and isn't really intended to be used in Custom Scripts

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
:SHint(admin, message, amount) -- Server Hints a message to the server, parameters are the same as :Message()
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
:Ban(username, reason, excludeAltAccounts, applyToUniverse, banDuration) -- Uses the Roblox Ban API to ban the player from the game for a set amount of time with a reason
:PBan(username, reason, excludeAltAccounts, applyToUniverse) -- Uses the Roblox Ban API to pban the player from the game with a reason
:IsBanned(username) -- Checks if a user is banned from the game (Roblox BanAPI)
:Unban(username, applyToUniverse) -- Unbans the player from the game using the Roblox Ban API, optional applyToUniverse variable - Set to True for default
:AssignAdminLevel(plr) -- Assigns a Admin Level to a user depending on what group rank they are in a group (For GroupAccess)
```

Here's an example using APIv3 in a custom script. Whenever a player joins the game, it gives them a forcefield and prints that a new player has joined the game:
```lua
local bmtAPI = require(game.ServerScriptService["Basic Moderation Tools 2.0"]["BasicMod Scripts"]["BasicMod V3 API"])

game.Players.PlayerAdded:Connect(function(plr)
    bmtAPI:ForceField(plr)
    bmtAPI:ConsoleLog("A player has joined the game")
end)
```
# Example Usage: Training Center Announcement Messages

There are many use cases for APIv3, like in a training center, where you can create different evetns that occur from the press of a button or command in chat. Below is an example of an announcement tutorial for players that are in the lobby waiting to be training. The announcement shows crucial information for the training, after that it resets all the players (You could change this part to TP players to a Moderator for the training). After the announcement has played, the script automatically locks the server so new people cannot join.

Below is the tutorial for this example:

Navigate to ``Basic Moderation Tools 2.0`` (Configuration Script) and paste this into ``CustomCommands``:
```lua
{
    Name = "start"; -- Execute in-chat using :start
    Enabled = true;
    Allowed = "Administrator";
    NotifyStaff = true;
    LogInConsole = true;
    ScriptToExecute = "StartAnnouncementTutorial";
};
```
Navigate to ``Basic Moderation Tools 2.0 > Custom Scripts`` and create a new ``Module Script`` and name it ``StartAnnouncementTutorial``, or what you named it in the ``ScriptToExecute`` area of the configuration:
```lua
local bmtAPI = require(game.ServerScriptService["Basic Moderation Tools 2.0"]["BasicMod Scripts"]["BasicMod V3 API"])

local bmtExecute = {}

local permitted = true

function bmtExecute:Run()
    if permitted == true then
        permitted = false
        bmtAPI:Slock("Training Center", "The training has started! New players will not be able to join.")
        bmtAPI:SHint("Training Center", "The server is now locked due to: Training has started.", 5)
        bmtAPI:ConsoleLog("The announcement tutorial is starting for all players!")
        bmtAPI:Message("Training Center", "Welcome to the training. This announcement will show important information about the training, please pay attention", 15)
        wait(16)
        bmtAPI:Message("Training Center", "This is some information", 10)
        wait(11)
        bmtAPI:Message("Training Center", "This is some more information", 10)
        wait(11)
        bmtAPI:Message("Training Center", "Good luck! You will be reset soon...", 10)
        wait(11)
        for _, player in ipairs(game.Players:GetPlayers()) do
            bmtAPI:Reset(player)
        end
        bmtAPI:ConsoleLog("The Announcement Tutorial (Custom Command) has completed running, the command will not be permitted to run again in this server.")
    else
        bmtAPI:ConsoleLog("An admin attempted to rerun the Announcement Tutorial command again. It has already been executed in this server.")
    end
end

return bmtExecute

```
That's it! Try running the command in-game by typing ``:start`` into the chatbar and you should see an announcement UI pop up.

# Adding more

There is already so much potential for this example usage of the API. You could use the ``:Sit()`` function so that all players are sitting when the announcement is played. You could use the ``:Freeze()`` function so players cannot move, and much more..

# What's next for 2.4?

There is so much more that I plan to add to Basic Moderation Tools that I don't have time for right now, including: A online web interface so admins and superadmins can check up on the game online, webhooks, including Roblox's new ban API, and more customizability for BMT! I made BMT for newer developers that are wanting a simple admin module that they can fork and modify to their liking, simplifying their process for creating custom commands.

# Conclusion

That's it! You have read through all of BMT2.4's documentation. Once new features are added I will be adding on to this doc.

Thanks for reading!

**81Frames, Developer of BMT**
