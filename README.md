# My Simple Desktop configuration with suckless software
First, make sure u understand how window manager work, especially dwm.  
The desktop configuration contains `dwm`, `dmenu`, `dwmblock`, and `st` ready to be installed.  
to install the whole thing you just run the `install.sh` script (Recommended after reinstalling Arch Linux, or you will need to configure it yourself).  
to start dwm just type `startx` in terminal and hit enter.
 
##Patch Installed
```
dwm:
- zoomswap
- focusonclick

dmenu:
- case-insensitive

st:
- alpha
- scrollback
- scrollback mouse altscreen
- ringbuffer

```

##Keybindings
```
Keybindings for dwm Configuration
================================

Basic Actions:
--------------

[Shift]+[Mod]+[Enter]   - Open a terminal.
[Mod]+[p]               - Launch dmenu for running programs like the x-www-browser.
[Mod]+[b]               - Toggle the visibility of the bar.
[Mod]+[Enter]           - Push the active window from the stack to the master area or pull the last used window from the stack onto the master area.

Window Focus:
-------------

[Mod]+[j]               - Focus on the next window in the current tag.
[Mod]+[k]               - Focus on the previous window in the current tag.

Window Management:
------------------

[Mod]+[h]               - Decrease the size of the master area.
[Mod]+[l]               - Increase the size of the master area.
[Mod]+[i]               - Increase the number of windows in the master area.
[Mod]+[d]               - Decrease the number of windows in the master area.

Layouts:
--------

[Mod]+[t]               - Set the layout to tiled mode.
[Mod]+[f]               - Set the layout to floating mode.
[Mod]+[m]               - Set the layout to monocle mode.
[Mod]+[space]           - Cycle through the available layouts.
[Mod]+[Shift]+[space]   - Toggle the floating state of the focused window.

Tag Management:
---------------

[Mod]+[1-9]             - View the corresponding tag.
[Mod]+[0]               - View all tags.
[Mod]+[Shift]+[1-9]     - Move the active window to the corresponding tag.
[Mod]+[Shift]+[0]       - Make the active window appear on all tags.

Screen and Monitor Management:
------------------------------

[Mod]+[, / .]           - Switch focus between screens in a multi-monitor setup.
[Mod]+[Shift]+[, / .]   - Move the active window to a different screen.

System Controls:
----------------

[Mod]+[q]               - Quit dwm cleanly.
[Mod]+[Shift]+[q]       - Restart dwm.

Additional Functionality:
-------------------------

[Mod]+[comma]           - Focus on the previous monitor.
[Mod]+[period]          - Focus on the next monitor.
[Mod]+[Shift]+[comma]   - Move the focused window to the previous monitor.
[Mod]+[Shift]+[period]  - Move the focused window to the next monitor.

Media Controls:
---------------

[Mod]+[XF86XK_AudioMicMute]         - Mute/unmute the microphone.
[Mod]+[XF86XK_AudioMute]            - Mute/unmute the volume.
[Mod]+[XF86XK_AudioLowerVolume]     - Decrease the volume.
[Mod]+[XF86XK_AudioRaiseVolume]     - Increase the volume.
[Mod]+[XF86XK_MonBrightnessDown]    - Decrease the monitor brightness.
[Mod]+[XF86XK_MonBrightnessUp]      - Increase the monitor brightness.

Scratchpad:
-----------

[Mod]+[s]               - Show Scratchpad 1.
[Mod]+[y]               - Show Scratchpad 2.
[Mod]+[u]               - Show Scratchpad 3.
[Mod]+[Shift]+[s]       - Hide Scratchpad 1.
[Mod]+[Shift]+[y]       - Hide Scratchpad 2.
[Mod]+[Shift]+[u]       - Hide Scratchpad 3.
[Mod]+[r]               - Remove Scratchpad.

Clipboard Management:
---------------------

[Mod]+[o]               - Open clipmenu.
[Mod]+[Shift]+[o]       - Clear clipboard history.

Note: Replace [Mod] with your specific modifier key (e.g., Super/Windows key).

```
Preview :  
![dwmlook](dwmlook.png)  


