For Use in Bazzite

Credit to the script at the link below: 
https://github.com/moonlight-stream/moonlight-qt/issues/752

DISCLAIMER: I make assumptions here. First that if you got Bazzite on your Ally to begin with that you are slightly tech savvy, enough to maybe use Git Clone and create files and scripts. As well as that you might be already Steam savvy and know how to add Non-Steam Games. Finally, that you can figure out how to navigate GUI from built in apps such as the KDEWallet and KDEWalletManager. 

These scripts are meant to help resolve stuttering issues when streaming from something like Moonlight or GeForce Now.

Steps: 
1. Create or clone the scripts somewhere you can easily get to them on your Ally in Desktop Mode. 
2. Give the Execute permissions either via the GUI or using terminal (chmod +x PATH_TO_SCRIPT/NameOfScript.sh
3. If you intend to add these as non-steam games like I did, you will have to use KDEWALLETMANAGER and change the password to your wallet to be blank. 
  Otherwise you will notice it doesn't make the changes it needs to in Steam Big Picture Mode. If you intend to only run the script in desktop mode then you are done and all set.
  Note here: I think I had to download the KDEWALLET flatpak from Discover to do this, the already installed version seemed to not want to open for me. Try yours first, if it gives issues look for it in Discover. 
  Jump to step: 
4. Add the scripts via Steam as a Non-Steam game
5. Run BSSID_Lock.sh to before you start a streaming session, this will do the following: Lock your Ally to the BSSID you are currently connected to meaning the WIFI access point and the frequency you are on. 
  So make sure you are in a good spot to the one you want and prefferably close enough to be on 5GHZ or higher. 
  In doing this, it also disables WI-FI scanning which is what is causing the stuttering, though we don't know why or if its a firmware issue. 
  It then Disconnects your WIFI and Reconnects to force the lock. 
  The last line then clears the BSSID lock, so that if you reboot your Ally it won't be locked to one BSSID and will act as normal.
6. Start your Streaming Session and Enjoy, your stuttering should be gone. I've had success with this. 

When you are done streaming you can either restart your Ally to get Wi-Fi back to regular behavior, OR you can run the BSSID_Unlock.sh via Steam or Desktop. This script just does the same as the Lock script, but instead of locking the BSSID and disconnecting and reconnecting it will make sure the BSSID is not speficied and then do the reconnection. This should restore default wifi behavior. 
