-- These would be the same as specifying a RunOnce.WTF, except these are applied every time the client starts.
-- This would not be a good place to put a setting that the user MIGHT WANT TO change.

 -- supposed bugfix for multiple processor machines
ConsoleExec("SET processAffinityMask 21845");

 -- Alternative timing code
ConsoleExec("SET timingmethod 0");
 
 -- maximum camera distance
ConsoleExec("SET cameraDistanceMax 50");
 
 -- Bugfix (confirmed) CharacterAmbient not turning on by default
ConsoleExec("characterambient");
 
 -- Sets camera to the old traditional movement (only adjust when moving, only horizontal)
ConsoleExec("SET cameraSmoothStyle 1");
 
 -- Bugfixes for things that cant be changed in Lua
 -- each of these cannot be changed from what they are
ConsoleExec("SET readTOS 1");
ConsoleExec("SET readEULA 1");
ConsoleExec("SET movie 0");
ConsoleExec("SET showToolsUI 0");
 
 
 -- Preformance fix
ConsoleExec("SET gxFixLag 0");

-- These things should be default, not forced on the user to read and know where their money is "supposedly" going to
ConsoleExec("SET equipmentManager 1");
ConsoleExec("SET previewtalents 1");
 
 -- d3d9ex has better preformance in general over default d3d, cache tweaks are just that
ConsoleExec("SET gxapi d3d9ex");
ConsoleExec("SET gxtexturecachesize 0"); -- Put this here to let the client dynamically decide whats going on with caching
ConsoleExec("SET texturecachesize 64"); -- This will revert to 32 on 32 bit systems
