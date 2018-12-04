# pa-muteall
Script that mutes all PulseAudio sinks connected to the system.

## To run this on login

These instructions work for GNOME, Unity, and other desktop environments that follow the [FreeDesktop Desktop Application Autostart Specification](https://standards.freedesktop.org/autostart-spec/autostart-spec-latest.html).

__The given commands assume you download the files to `~/Downloads` and want the script to be located at `~/.mute-all.sh`.__  

1. Download `mute-all.sh` and `mute-all.desktop` files from the repository.  
   
2. Move `mute-all.sh` to `~/.mute-all.sh`  
   `mv ~/Downloads/mute-all.sh ~/.mute-all.sh`  
   _(You can put it somewhere else if you'd like, but you will have to edit the `.desktop` file.)_  
   
3. Change permissions to allow `mute-all.sh` to execute.  
   `chmod +x ~/.mute-all.sh`  
   
4. Move `mute-all.desktop` to `~/.config/autostart`  
   `mv ~/Downloads/mute-all.desktop ~/.config/autostart`  
   
5. Change permissions to allow `mute-all.desktop` to execute.  
   `chmod +x ~/.config/autostart/mute-all.desktop`  
   
6. Trust `mute-all.desktop` (Only required on GNOME-based DEs)  
   `gio set ~/.config/autostart "metadata::trusted" yes`  
   
7. Logout and log back in to test.  

### Not working?

Try changing the path in `~/.config/autostart/mute-all.desktop` to the absolute path to the script.

Change the line `Exec=~/.mute-all.sh` to `Exec=/home/USERNAME/.mute-all.sh` where `USERNAME` is your username.
