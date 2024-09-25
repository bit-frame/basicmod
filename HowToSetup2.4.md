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
