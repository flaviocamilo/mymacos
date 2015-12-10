#!/usr/bin/env bash

sudo nvram SystemAudioVolume=" "

#sudo pmset -a standbydelay 86400

sudo systemsetup -settimezone "America/Sao_Paulo" > /dev/null

chflags nohidden $HOME/Library

defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

sudo scutil --set LocalHostName "tocsin"
sudo scutil --set ComputerName "Flávio's MacBook Pro"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server ServerDescription -string "Flávio's MacBook Pro"
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

defaults write NSGlobalDomain AppleFontSmoothing -int 2
#defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
defaults write NSGlobalDomain AppleLanguages -array "en" "de" "pt-BR"
defaults write NSGlobalDomain AppleLocale -string "en_BR"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write NSGlobalDomain AppleShowScrollBars -string "Automatic"
defaults write NSGlobalDomain KeyRepeat -float 0.5
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1
defaults write NSGlobalDomain com.apple.springing.delay -float 0.5
defaults write NSGlobalDomain com.apple.springing.enabled -bool true
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true
defaults write com.apple.dock largesize -int 50
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock mouse-over-hilite-stack -bool true
defaults write com.apple.dock mru-spaces -bool false
#defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock show-process-indicators -bool true
defaults write com.apple.dock showhidden -bool true
defaults write com.apple.dock showAppExposeGestureEnabled -int 1
defaults write com.apple.dock showLaunchpadGestureEnabled -int 1
defaults write com.apple.dock tilesize -int 40
defaults write com.apple.dock wvous-br-corner -int 6
defaults write com.apple.dock wvous-br-modifier -int 0
defaults write com.apple.dock wvous-tl-corner -int 10
defaults write com.apple.dock wvous-tl-modifier -int 131072
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write com.apple.finder CreateDesktop -bool false
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder FXInfoPanesExpanded -dict General -bool true OpenWith -bool true Preview -bool true Privileges -bool true
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"
defaults write com.apple.finder QuitMenuItem -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
defaults write com.apple.finder QLEnableTextSelection -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder WarnOnEmptyTrash -bool false
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true
defaults write com.apple.helpviewer DevMode -bool true
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
defaults write com.apple.mail DraftsViewerAttributes -dict-add "DisplayInThreadedMode" -string "yes"
#defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortedDescending" -string "yes"
#defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortOrder" -string "received-date"
defaults write com.apple.mail SpellCheckingBehavior -string "InlineSpellCheckingEnabled"
defaults write com.apple.screencapture location -string "${HOME}/Pictures/Screenshots"
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 5
defaults write com.apple.terminal StringEncodings -array 4
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true
defaults write com.apple.ActivityMonitor ShowCategory -int 0
defaults write com.apple.CrashReporter DialogType -string "none"
defaults write com.apple.iTunes dontAutomaticallySyncIPods -bool true
defaults write com.apple.LaunchServices LSQuarantine -bool false
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
defaults write com.apple.Safari HomePage -string "about:blank"
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari ShowFavoritesBar -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari WebKitTabToLinksPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks -bool true
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4
defaults write com.apple.TextEdit RichText -int 0
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Downloads/Torrents/Incomplete"
defaults write org.m0k.transmission WarningDonate -bool false
defaults write org.m0k.transmission WarningLegal -bool false

defaults write com.twitter.twitter-mac openLinksInBackground -bool true
defaults write com.twitter.twitter-mac ESCClosesComposeWindow -bool true
defaults write com.twitter.twitter-mac ShowFullNames -bool true

for domain in $HOME/Library/Preferences/ByHost/com.apple.systemuiserver.*; do
	defaults write "${domain}" dontAutoLoad -array \
		"/System/Library/CoreServices/Menu Extras/User.menu" \
		"/System/Library/CoreServices/Menu Extras/Volume.menu"
done
defaults write com.apple.systemuiserver menuExtras -array \
	"/System/Library/CoreServices/Menu Extras/AirPort.menu" \
	"/System/Library/CoreServices/Menu Extras/Battery.menu" \
	"/System/Library/CoreServices/Menu Extras/Clock.menu" \
	"/System/Library/CoreServices/Menu Extras/TimeMachine.menu"

## Show item info near icons on the desktop and in other icon views
#/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" $HOME/Library/Preferences/com.apple.finder.plist
#/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:showItemInfo true" $HOME/Library/Preferences/com.apple.finder.plist
#/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:showItemInfo true" $HOME/Library/Preferences/com.apple.finder.plist
## Show item info to the right of the icons on the desktop
#/usr/libexec/PlistBuddy -c "Set DesktopViewSettings:IconViewSettings:labelOnBottom false" $HOME/Library/Preferences/com.apple.finder.plist
## Enable snap-to-grid for icons on the desktop and in other icon views
#/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" $HOME/Library/Preferences/com.apple.finder.plist
#/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" $HOME/Library/Preferences/com.apple.finder.plist
#/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" $HOME/Library/Preferences/com.apple.finder.plist
## Increase grid spacing for icons on the desktop and in other icon views
#/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 100" $HOME/Library/Preferences/com.apple.finder.plist
#/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:gridSpacing 100" $HOME/Library/Preferences/com.apple.finder.plist
#/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:gridSpacing 100" $HOME/Library/Preferences/com.apple.finder.plist
## Increase the size of icons on the desktop and in other icon views
#/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 80" $HOME/Library/Preferences/com.apple.finder.plist
#/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:iconSize 80" $HOME/Library/Preferences/com.apple.finder.plist
#/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:iconSize 80" $HOME/Library/Preferences/com.apple.finder.plist

osascript <<EOD
tell application "Terminal"
	local allOpenedWindows
	local initialOpenedWindows
	local windowID

	set themeName to "flaviolarized"

	set initialOpenedWindows to id of every window

	do shell script "open '$MYOSX_HOME/tty/" & themeName & ".terminal'"

	delay 1

	set default settings to settings set themeName

	set allOpenedWindows to id of every window

	repeat with windowID in allOpenedWindows
		if initialOpenedWindows does not contain windowID then
			close (every window whose id is windowID)
		else
			set current settings of tabs of (every window whose id is windowID) to settings set themeName
		end if
	end repeat
end tell
EOD

cp "$MYOSX_HOME"/misc/com.manytricks.Moom.plist $HOME/Library/Preferences/

sudo softwareupdate -i -a

if ! xcode-select -p &> /dev/null; then
	xcode-select --install &> /dev/null

	until xcode-select -p &> /dev/null; do
		sleep 5
	done

	sudo xcode-select -s /Applications/Xcode.app/Contents/Developer

	sudo xcodebuild -license
fi

for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" "Dock" "Finder" "iTunes" "Mail" "Messages" "Moom" "Safari" "SystemUIServer" "TextEdit" "Time Machine" "Transmission" "Twitter"; do
	killall "${app}" &> /dev/null
done

echo "Done."
