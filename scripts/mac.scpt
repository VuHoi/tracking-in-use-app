





on run arguments

set urls to {}
tell application "System Events"
repeat with anItem in arguments

	set myApp to anItem as text

	if myApp is "GoogleChrome" then
		tell application "Google Chrome" 
                 set the_url to the URL of active tab of front window
                 set urls to urls & the_url
                  end tell
	else if myApp is "Opera" then
		tell application "Opera" 
                set the_url to the URL of front document
                  set urls to urls & the_url
                end tell
	
        else if myApp is "BraveBrowser" then
                tell application "Brave Browser"
               set the_url to the URL of active tab of front window
                set urls to urls & the_url
                end tell
        -- else if myApp is "Microsoft Edge" then
        --         tell application "Microsoft Edge" to return URL of active tab of front window
 
        -- else if myApp is "Webkit" then
        --          tell application "Webkit" to return URL of active tab of front window

        else if myApp is "Safari" then
		tell application "Safari" 
                set the_url to the URL of front document
              set urls to urls & the_url
                end tell
	else if myApp is "Firefox" then
		tell application "Firefox" to activate
tell application "System Events"
    keystroke "l" using command down
    keystroke "c" using command down
end tell
 set the_url to the clipboard as text
 set urls to urls & the_url
               

	else
		return
	end if
          end repeat
end tell
return {urls}
end run


  
  