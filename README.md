## Notes

### Lenovo Thinkpad X230
#### WiFi
Required driver/firmware: `aptitude install firmware-realtek`.

#### Brightness
Follow these steps: https://wiki.archlinux.org/index.php/Kernel_parameters#GRUB  
The parameter to add is: `acpi_osi=\\"!Windows 2012\\"`.  
Run `sudo upragde-grub` when done.

### Graphics
#### Auto start X at login
https://wiki.archlinux.org/index.php/Xinitrc#Autostart_X_at_login

#### Auto load .Xresources of .Xresources
Add `[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources` in `~/.xinitrc`,
before the `exec` line.

### Audio
In order for audio to work, the user should be in the `pulse` group.

### Fonts
* Fonts should be put in *~/.fonts*.
* To detect new fonts, run `fc-cache -fv`. *fc-list* should list them.  
    No sure, but
    `dpkg-reconfigure fontconfig-config; dpkg-reconfigure fontconfig` might be
    needed too.
* Some fonts, such as the _*.pcf_ ones are, are "bitmap" fonts.  
    Run `dpkg-reconfigure fontconfig-config` and enable them in the last step.

#### Unicode and arabic fonts in Arch Linux
* Unicode fonts: `yaourt -S ttf-dejavu`  
* Arabic fonts: Install any of these fonts:
https://wiki.archlinux.org/index.php/Fonts#Arabic_.26_Urdu

### Set correct time
`sudo timedatectl set-timezone 'Europe/Paris' && sudo timedatectl set-ntp true`
