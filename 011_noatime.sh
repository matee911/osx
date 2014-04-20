sudo cp ./LaunchDaemons/com.matee.noatime.plist /Library/LaunchDaemons/
sudo chown root:wheel /Library/LaunchDaemons/com.matee.noatime.plist 
sudo chmod 644 /Library/LaunchDaemons/com.matee.noatime.plist 
sudo launchctl load -w /Library/LaunchDaemons/com.matee.noatime.plist 
