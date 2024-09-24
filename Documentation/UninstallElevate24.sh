#!/bin/sh

#############################################################
# Owned by Jigsaw24                                                                                                          	                                                         	
# CHANGE LOG:	
#   v1.0.0 - 25-09-2024
#############################################################

loggedInUser=$( scutil <<< "show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }' ) 
userID=$(/usr/bin/id -u $loggedInUser)

result=""
if [ -e /Library/LaunchAgents/com.jigsaw24.Elevate24.plist ]; then
    result=$(/bin/launchctl asuser $userID /bin/launchctl unload /Library/LaunchAgents/com.jigsaw24.Elevate24.plist)
fi
if [ -e /Library/LaunchDaemons/com.jigsaw24.Elevate24Helper.plist ]; then
	/bin/launchctl unload /Library/LaunchDaemons/com.jigsaw24.Elevate24Helper.plist
fi
if [ -e Library/LaunchAgents/com.jigsaw24.Elevate24.plist ]; then
	/bin/launchctl unload Library/LaunchAgents/com.jigsaw24.Elevate24.plist
fi

pkill -9 Elevate24
result=$(/bin/launchctl asuser $userID /usr/bin/pkill -9 Elevate24)

rm -Rf /Applications/Elevate24.app 
rm -Rf /Library/LaunchDaemons/com.jigsaw24.Elevate24Helper.plist 
rm -Rf /Library/LaunchAgents/com.jigsaw24.Elevate24.plist 
rm -Rf /Library/PrivilegedHelperTools/com.jigsaw24.Elevate24Helper 
rm -Rf /Library/PrivilegedHelperTools/com.jigsaw24.Elevate24Helper.app 
rm -Rf /Library/Application\ Support/Elevate24
rm -Rf /Users/$loggedInUser/Library/Application\ Support/com.jigsaw24.Elevate24

exit 0
