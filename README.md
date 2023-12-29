# Enable auto resize resolution of guest OS running XFCE inside QEMU

> For XFCE, this is a known bug which does not appear to have been fixed yet (confirmed still broken in Xubuntu 20.04).
>
> This issue is due to a change in spice-vdagent whereby instead of changing the resolution directly, it instead notifies the DE to make the change, and that functionality has not been implemented yet in XFCE.
>
> One workaround is to run the following in the guest every time you resize your window:
>
> ```bash
>$ xrandr --output Virtual-1 --auto
>```

<small><i>[Original answer](https://stackoverflow.com/questions/41990600/virt-manager-guest-resize-not-working/61540989#61540989) from StackOverflow</i></small>

---

## Usage of the script:

When you run the script, it will run the previous command on every Virtual screen you have attached to your VM once a second.

---

## Installation:

Create the following `.desktop` file for the script and place it in `~/.config/autostart/AutoRes.desktop`:

```.desktop
[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=Auto Resize Screen
Exec=path/to/qemu-xfce-auto-res.sh
OnlyShowIn=XFCE;
StartupNotify=false
Terminal=false
Hidden=false
```
That way the script will be executed on login.

---

## Demonstration:

![](https://forum.manjaro.org/uploads/default/original/3X/1/2/125dd1ad81212d4fc357b68575729d19532e698a.gif)
