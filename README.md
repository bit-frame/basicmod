# Introduction

Basic Moderation Tools (2.4) is a fully open source admin module, currently containing 38 executable in-game commands. It features admin heirachies, Custom Command Integration, Flexible Command Configuration, Donor Commands, Command Logging, and a API (APIv3) that can be loaded in a custom script and use all of Basic Moderation Tools' functions.

```
Some features haven't been officially released yet due to bugs:

- :NotifyStaff()
- Server ban API
- Logs, Chatlogs
```
# Getting Started

To install BMT2.4, navigate to ``basicmod > Basic Moderation Tools 2.4.rbxm`` and download the module. In Roblox Studio import the module by right clicking on the ``Explorer`` and pressing ``Insert from file``

You will need to ungroup the model and move all the folders to their respective positions, shown below:
```
3.0 ReplicatedStorage > Replicated Storage
3.0 SoundService > Sound Service
3.0 StarterGui > StarterGui
3.0 Blur > Lighting
Basic Moderation Tools 2.0 > ServerScriptService
```
Open ``Basic Moderation Tools 2.0`` and configure the admin module settings to your liking.

> Note: You do not need to enter your username into the admin table, as the game owner is automatically ranked upon joining the game

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
ban (plr) (reason) - Bans a player from the server with a reason displayed in the kick message
unban (plr) - Unbans a player from the server
```

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

# Using APIv3 inside Custom Scripts

Do you want to be able to use BMT2.4's API to execute it's commands? BMT2.4 comes with an API that your custom scripts can use simply by loading the API module.
You can load APIv3 with this line of code:
```lua
local bmtAPI = require(game.ServerScriptService["Basic Moderation Tools 2.0"]["BasicMod Scripts"]["BasicMod V3 API"])
```
After loading the API, you can use these functions to execute various BMT2.4 commands in any script you want:
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

Here's an example using APIv3 in a custom script. Whenever a player joins the game, it gives them a forcefield and prints that a new player has joined the game:
```lua
local bmtAPI = require(game.ServerScriptService["Basic Moderation Tools 2.0"]["BasicMod Scripts"]["BasicMod V3 API"])

game.Players.PlayerAdded:Connect(function(plr)
    bmtAPI:ForceField(plr)
    bmtAPI:ConsoleLog("A player has joined the game")
end)
```
# Example Usage: Training Center Announcement Messages

There are many use cases for APIv3, like in a training center, where you can create different evetns that occur from the press of a button or command in chat. Below is an example of an announcement tutorial for players that are in the lobby waiting to be training. The announcement shows crucial information for the training, after that it resets all the players (You could change this part to TP players to a Moderator for the training).
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
