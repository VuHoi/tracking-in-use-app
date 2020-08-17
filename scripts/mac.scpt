tell application "Safari"
    -- Initialize
    set tabNames to {}
    set tabURLs to {}
    set frontName to name of front document
    
    -- Collect the tab names and URLs from the top Safari window
    set topWindow to window 1
    set topTabs to every tab of topWindow
    repeat with t in topTabs
      set end of tabNames to name of t
      set end of tabURLs to URL of t
    end repeat
  end tell
  
  -- Display a list of names for the user to choose from
  tell application "System Events"
    set activeApp to name of first application process whose frontmost is true
    activate
    choose from list tabNames with title "Safari Tabs" default items frontName
    if result is not false then
      set nameChoice to item 1 of result
    else
      return
    end if
  end tell
  
  -- Return the URL of the selected tab
  tell application activeApp to activate
  repeat with t from 1 to the count of tabNames
    if item t of tabNames is nameChoice then return item t of tabURLs
  end repeat
  