on run argv
    set targetProfile to item 1 of argv

    if targetProfile is not "Home" and targetProfile is not "Work" then
        error "Unknown profile: " & targetProfile
    end if

    set targetSuffix to "Helium – " & targetProfile

    tell application "Helium" to activate

    tell application "System Events"
        tell process "Helium"
            set frontmost to true

            -- Find an existing window for the requested profile
            repeat with w in windows
                if (name of w) ends with targetSuffix then
                    perform action "AXRaise" of w
                    return
                end if
            end repeat

            -- No window found: open the profile via the menu
            click menu item targetProfile of ¬
                menu "Profiles" of ¬
                menu bar item "Profiles" of menu bar 1
        end tell
    end tell
end run
