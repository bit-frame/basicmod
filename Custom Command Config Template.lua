--[[

Basic Moderation Tools Custom Command Configuration Template

]]

{
	Name = "exmaplecommand"; -- The command name you want to use to execute
	Enabled = true; -- Is the command enabled
	Allowed = "Owner"; -- Who is allowed to use the command (Heirachy)
	NotifyStaff = false; -- Notify staff of the command execution
	LogInConsole = true; -- Log the command execution in the console
	ScriptToExecute = "CustomExecutionScript"; -- The script you want the custom command API to execute. The file to execute must be located in Basic Moderation Tools 2.0 > Custom Scripts
};
