#!/usr/bin/env bash

### GENERAL
chflags nohidden $HOME/Library
sudo systemsetup -settimezone "America/Sao_Paulo" > /dev/null
sudo scutil --set LocalHostName "tocsin"
sudo scutil --set ComputerName "Flávio's MacBook Pro"
#sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server ServerDescription -string "Flávio's MacBook Pro"
#sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
#sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
#defaults write NSGlobalDomain AppleAquaColorVariant -int 6
defaults write NSGlobalDomain AppleFontSmoothing -int 2
defaults write NSGlobalDomain AppleShowScrollBars -string "Automatic"
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool true
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1
defaults write NSGlobalDomain com.apple.springing.delay -float 0.5
defaults write NSGlobalDomain com.apple.springing.enabled -bool true
defaults write com.apple.crashreporter DialogType -string "none"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true
defaults write com.apple.launchservices LSQuarantine -bool false
defaults write com.apple.screencapture location -string "${HOME}/Pictures/Screenshots"
defaults write com.apple.screencapture type -string "png"
#defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/TimeMachine.menu" "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Battery.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu"

### DESKTOP & SCREEN SAVER
defaults write com.apple.dock wvous-br-corner -int 6
defaults write com.apple.dock wvous-br-modifier -int 0
defaults write com.apple.dock wvous-tl-corner -int 10
defaults write com.apple.dock wvous-tl-modifier -int 131072
#defaults write com.apple.screensaver askForPassword -int 1
#defaults write com.apple.screensaver askForPasswordDelay -int 0

### DOCK
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true
defaults write com.apple.dock largesize -int 50
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock mouse-over-hilite-stack -bool true
#defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock showhidden -bool true
defaults write com.apple.dock tilesize -int 40

### MISSION CONTROL
defaults write com.apple.dock mru-spaces -bool false

### LANGUAGE & REGION
defaults write NSGlobalDomain AppleICUDateFormatStrings -dict 1 -string "MM/dd/yy" 2 -string "MMM dd, y" 3 -string "MMMM dd, y" 4 -string "EEEE, MMMM dd, y"
defaults write NSGlobalDomain AppleICUForce24HourTime -bool true
defaults write NSGlobalDomain AppleICUNumberSymbols -dict 0 -string "," 1 -string "." 10 -string "," 17 -string "."
defaults write NSGlobalDomain AppleLanguages -array "en" "de" "pt-BR"
defaults write NSGlobalDomain AppleLocale -string "en_BR"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

### KEYBOARD
#defaults write NSGlobalDomain AppleKeyboardUIMode -int 2
#defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
#defaults write NSGlobalDomain KeyRepeat -float 0.5
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool true

### TRACKPAD
#defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool true
#defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
#defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
#defaults write NSGlobalDomain com.apple.trackpad.forceClick -bool true
#defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
#defaults write com.apple.AppleMultitouchTrackpad TrackpadFiveFingerPinchGesture -int 2
#defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerHorizSwipeGesture -int 2
#defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerPinchGesture -int 2
#defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerVertSwipeGesture -int 2
#defaults write com.apple.AppleMultitouchTrackpad TrackpadHorizScroll -bool true
#defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -int 1
#defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
#defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 0
#defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 2
#defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -int 0
#defaults write com.apple.dock showAppExposeGestureEnabled -bool true
#defaults write com.apple.dock showLaunchpadGestureEnabled -bool true
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFiveFingerPinchGesture -int 2
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerHorizSwipeGesture -int 2
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerPinchGesture -int 2
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerVertSwipeGesture -int 2
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadHorizScroll -bool true
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -int 1
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 0
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 2
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -int 0

### SOUND
#defaults write com.apple.systemsound com.apple.sound.beep.flash -bool true
#defaults write com.apple.systemsound com.apple.sound.uiaudio.enabled -bool true

### APP STORE
#defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

### DATE & TIME
#defaults write com.apple.menuextra.clock DateFormat -string "EEE MMM d  HH:mm:ss"
defaults write com.apple.menuextra.clock FlashDateSeparators -bool true
#defaults write com.apple.menuextra.clock IsAnalog -bool false

### TIME MACHINE
#defaults write com.apple.timemachine DoNotOfferNewDisksForBackup -bool true

### ACCESSIBILITY
#defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
#defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true
#defaults write com.apple.universalaccess flashScreen -bool true

### CONTACTS
defaults write NSGlobalDomain NSPersonNameDefaultShortNameEnabled -bool true
defaults write NSGlobalDomain NSPersonNameDefaultShortNameFormat -int 1
defaults write com.apple.AddressBook AB21vCardEncoding -string "macintosh"
defaults write com.apple.AddressBook ABMiddlenameVisible -bool true
defaults write com.apple.AddressBook ABNameSortingFormat -string "sortingFirstName sortingLastName"
defaults write com.apple.AddressBook ABPrivateVCardFieldsEnabled -bool false
defaults write com.apple.AddressBook NSPreferencesContentSize -array "527" "273"

### FINDER
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder CreateDesktop -bool false
defaults write com.apple.finder FavoriteTagNames -array "" "Home" "Work" "Important"
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
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowTabView -bool true
defaults write com.apple.finder SidebarWidth -int 195
defaults write com.apple.finder WarnOnEmptyTrash -bool false

### HELPVIEWER
defaults write com.apple.helpviewer DevMode -bool true

### ITUNES
#defaults write com.apple.iTunes dontAutomaticallySyncIPods -bool true

### MAIL
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
defaults write com.apple.mail DraftsViewerAttributes -dict-add "DisplayInThreadedMode" -string "yes"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortedDescending" -string "yes"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortOrder" -string "received-date"
defaults write com.apple.mail SpellCheckingBehavior -string "InlineSpellCheckingEnabled"

### MOOM
cp "$MYOSX_HOME"/misc/com.manytricks.Moom.plist $HOME/Library/Preferences/

### SAFARI
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
defaults write com.apple.Safari AlwaysShowFavoritesBarInFullScreen -bool true
defaults write com.apple.Safari AlwaysShowTabBar -bool true
defaults write com.apple.Safari AlwaysShowTabBarInFullScreen -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari ShowFavoritesBar -bool true
defaults write com.apple.Safari "ShowFavoritesBar-v2" -bool true
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
defaults write com.apple.Safari ShowOverlayStatusBar -bool true
defaults write com.apple.Safari SidebarSplitViewDividerPosition -int 375
defaults write com.apple.Safari SidebarViewModeIdentifier -string "Reading List"
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari WebKitTabToLinksPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks -bool true

### TEXTEDIT
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4
defaults write com.apple.TextEdit RichText -int 0

### TERMINAL
defaults write com.apple.terminal StringEncodings -array 4
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

### TRANSMISSION
defaults write org.m0k.transmission DownloadFolder -string "${HOME}/Downloads/Torrents/Complete"
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Downloads/Torrents/Incomplete"
defaults write org.m0k.transmission WarningDonate -bool false
defaults write org.m0k.transmission WarningLegal -bool false

### TWITTER
#defaults write com.twitter.twitter-mac openLinksInBackground -bool true
#defaults write com.twitter.twitter-mac ESCClosesComposeWindow -bool true
#defaults write com.twitter.twitter-mac ShowFullNames -bool true

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

if [[ ! -f /Library/Fonts/FSText-Regular.otf ]]; then
	curl -O -L -s https://github.com/jenskutilek/FiraSystemFontReplacement/releases/download/v4.106.1/fira-system-fonts-installer.zip
	unzip fira-system-fonts-installer.zip
	sudo -S -v <<< "${PASSWORD}" 2> /dev/null
	sudo installer -pkg "Fira System Fonts.pkg" -target / &> /dev/null
	rm -f fira-system-fonts-installer.zip "Fira System Fonts.pkg"
fi

if [[ ! $(xcode-select -p 2> /dev/null | grep '/Applications/Xcode.app') ]]; then
	xcode-select --install 2> /dev/null
	until [[ $(xcode-select -p 2> /dev/null | grep '/Applications/Xcode.app') ]]; do
		sleep 5
	done
	sudo -S -v <<< "${PASSWORD}" 2> /dev/null
	sudo xcodebuild -license accept
fi

sudo softwareupdate -i -a

for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" "Dock" "Finder" "iTunes" "Mail" "Messages" "Moom" "Safari" "SystemUIServer" "TextEdit" "Time Machine" "Transmission" "Twitter"; do
	killall "${app}" &> /dev/null
done
