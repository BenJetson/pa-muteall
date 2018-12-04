# pa-muteall
Script that mutes all PulseAudio sinks connected to the system.

## Running the script on login

These instructions work for GNOME, Unity, and other desktop environments that follow the [FreeDesktop Desktop Application Autostart Specification](https://standards.freedesktop.org/autostart-spec/autostart-spec-latest.html).

**The given commands assume that: You want the script to be located at `~/.mute-all.sh`.**
_(You can put it somewhere else if you'd like, but you will have to edit the `.desktop` file.)_  


1. Download `mute-all.sh` and `mute-all.desktop` files from the repository.  
   The files will be put in `~` and `~/.config/autostart`, respectively. 
   ```
   wget https://github.com/BenJetson/pa-muteall/raw/master/mute-all.sh -O ~/.mute-all.sh
   wget https://github.com/BenJetson/pa-muteall/raw/master/mute-all.desktop -P ~/.config/autostart
   ```
   
2. Change permissions to allow these files to execute.  
   ```
   chmod +x ~/.mute-all.sh
   chmod +x ~/.config/autostart/mute-all.desktop
   ```  
   
3. Trust `mute-all.desktop` (Only required on GNOME-based DEs)  
   `gio set ~/.config/autostart "metadata::trusted" yes`  
   
5. Logout and log back in to test.  

### Not working?

Try changing the path in `~/.config/autostart/mute-all.desktop` to the absolute path to the script.

Change the line `Exec=~/.mute-all.sh` to `Exec=/home/USERNAME/.mute-all.sh` where `USERNAME` is your username.
