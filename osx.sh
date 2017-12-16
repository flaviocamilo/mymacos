#!/usr/bin/env bash

echo -e "\n==> Setting OSX preferences..."

### GENERAL
chflags nohidden "${HOME}/Library"
sudo pmset -a disksleep 0 &> /dev/null
sudo systemsetup -settimezone "America/Sao_Paulo" > /dev/null
sudo scutil --set LocalHostName "${HOST_NAME}"
sudo scutil --set ComputerName "${COMPUTER_NAME}"
defaults write -g AppleAquaColorVariant -int 6
defaults write -g AppleHighlightColor -string "0.566526 0.632862 0.729481"
defaults write -g AppleFontSmoothing -int 2
defaults write -g AppleShowScrollBars -string "Automatic"
defaults write -g NSQuitAlwaysKeepsWindows -bool false
defaults write -g NSTableViewDefaultSizeMode -int 1
defaults write -g userMenuExtraStyle -int 2
defaults write -g com.apple.springing.delay -float 0.5
defaults write -g com.apple.springing.enabled -bool true
defaults write com.apple.crashreporter DialogType -string "none"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true
defaults write com.apple.imagecapture disableHotPlug -bool true
defaults write com.apple.launchservices LSQuarantine -bool false
defaults write com.apple.screencapture location -string "${HOME}/Pictures/Screenshots"
defaults write com.apple.screencapture type -string "png"

### DESKTOP & SCREEN SAVER
defaults write com.apple.dock wvous-br-corner -int 6
defaults write com.apple.dock wvous-br-modifier -int 0
defaults write com.apple.dock wvous-tl-corner -int 10
defaults write com.apple.dock wvous-tl-modifier -int 131072
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 60

### DOCK
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true
defaults write com.apple.dock largesize -int 50
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock mineffect -string "scale"
defaults write com.apple.dock minimize-to-application -bool true
defaults write com.apple.dock mouse-over-hilite-stack -bool true
defaults write com.apple.dock showhidden -bool true
defaults write com.apple.dock tilesize -int 35

### MISSION CONTROL
defaults write com.apple.dock mru-spaces -bool false

### LANGUAGE & REGION
defaults write -g AppleICUDateFormatStrings -dict 1 -string "MM/dd/yy" 2 -string "MMM dd, y" 3 -string "MMMM dd, y" 4 -string "EEEE, MMMM dd, y"
defaults write -g AppleICUForce24HourTime -bool true
defaults write -g AppleICUNumberSymbols -dict 0 -string "," 1 -string "." 10 -string "," 17 -string "."
defaults write -g AppleLanguages -array "en" "de" "pt-BR"
defaults write -g AppleLocale -string "en_BR"
defaults write -g AppleMeasurementUnits -string "Centimeters"
defaults write -g AppleMetricUnits -bool true

### KEYBOARD
defaults write -g AppleKeyboardUIMode -int 2
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write -g KeyRepeat -float 0.5
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
defaults write -g com.apple.keyboard.fnState -bool true

### MOUSE
defaults write -g AppleEnableMouseSwipeNavigateWithScrolls -bool true
defaults write -g com.apple.mouse.scaling -float 1
defaults write com.apple.AppleMultitouchMouse MouseButtonMode -string "TwoButton"
defaults write com.apple.AppleMultitouchMouse MouseOneFingerDoubleTapGesture -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse "save.MouseButtonMode.v1" -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode -string "TwoButton"
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseOneFingerDoubleTapGesture -int 1

### TRACKPAD
defaults -currentHost write -g com.apple.mouse.tapBehavior -int 1
defaults -currentHost write -g com.apple.trackpad.threeFingerDragGesture -int 1
defaults -currentHost write -g com.apple.trackpad.threeFingerHorizSwipeGesture -int 0
defaults -currentHost write -g com.apple.trackpad.threeFingerTapGesture -int 2
defaults -currentHost write -g com.apple.trackpad.threeFingerVertSwipeGesture -int 0
defaults write -g com.apple.mouse.tapBehavior -int 1
defaults write -g com.apple.trackpad.scaling -float 0.875
sudo defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -int 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -int 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -int 0
defaults write com.apple.dock showAppExposeGestureEnabled -int 1
sudo defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -int 0

### SOUND
defaults write com.apple.systemsound com.apple.sound.uiaudio.enabled -bool false

### APP STORE
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

### DATE & TIME
defaults write com.apple.menuextra.clock DateFormat -string "EEE MMM d  HH:mm:ss"
defaults write com.apple.menuextra.clock FlashDateSeparators -bool false

### TIME MACHINE
defaults write com.apple.timemachine DoNotOfferNewDisksForBackup -bool true

### ACCESSIBILITY
defaults write com.apple.universalaccess closeViewScrollWheelToggle -int 1
defaults write com.apple.universalaccess flashScreen -bool true
defaults write com.apple.systemsound com.apple.sound.beep.flash -bool true

### BETTER TOUCH TOOL
defaults write com.hegenberg.BetterTouchTool launchOnStartup -bool true

### CONTACTS
defaults write -g NSPersonNameDefaultShortNameEnabled -bool true
defaults write -g NSPersonNameDefaultShortNameFormat -int 1
defaults write com.apple.AddressBook AB21vCardEncoding -string "macintosh"
defaults write com.apple.AddressBook ABMiddlenameVisible -bool true
defaults write com.apple.AddressBook ABNameSortingFormat -string "sortingFirstName sortingLastName"
defaults write com.apple.AddressBook ABPrivateVCardFieldsEnabled -bool false
defaults write com.apple.AddressBook NSPreferencesContentSize -array "527" "273"

### FINDER
defaults write -g AppleShowAllExtensions -bool true
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
defaults write com.apple.iTunes dontAutomaticallySyncIPods -bool true

### MAIL
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
defaults write com.apple.mail DraftsViewerAttributes -dict-add "DisplayInThreadedMode" -string "yes"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortedDescending" -string "yes"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortOrder" -string "received-date"
defaults write com.apple.mail SpellCheckingBehavior -string "InlineSpellCheckingEnabled"

### MOOM
cp "${MYOSX_HOME}/misc/com.manytricks.Moom.plist" "${HOME}/Library/Preferences/"

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
defaults write com.apple.Terminal StringEncodings -array 4
defaults write com.apple.Terminal NewTabWorkingDirectoryBehavior -int 1

### TRANSMISSION
defaults write org.m0k.transmission DownloadFolder -string "${HOME}/Downloads/Torrents/Complete"
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Downloads/Torrents/Incomplete"
defaults write org.m0k.transmission WarningDonate -bool false
defaults write org.m0k.transmission WarningLegal -bool false

### WATTS
defaults write com.binarytricks.watts ShowPercentage -bool false
defaults write com.binarytricks.watts ShowTime -bool true
defaults write com.binarytricks.watts StartAtLogin -bool true

echo -e "\n==> Updating OSX..."
sudo softwareupdate -i -a &> /dev/null
