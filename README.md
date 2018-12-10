# whonix_helper

To use whonix gateway we have to configure our guest VM:

Network -> Adapter 1 -> attached to Internal Network 
Network -> Adapter 1 -> Name (Internal Network): Whonix

After firing up the guest just run whonix.sh script.

If you need to prevent changes and switch to wireless usb:
switch off network adapter on guest VM
run reset.sh and after plug the adapter

Tested on Kali-Linux Rolling