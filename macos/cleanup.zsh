# Kill all affected apps such that the changes take effect
for app in "Activity Monitor" \
    "Address Book" \
    "Calendar" \
    "cfprefsd" \
    "Contacts" \
    "Dock" \
    "Finder" \
    "Mail" \
    "Safari" \
    "SystemUIServer" \
    "Terminal" \
    "Transmission"; do
    killall "${app}" &>/dev/null
done

echo "Done. Note that some of these changes require a logout/restart to take effect."
