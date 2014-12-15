tell application "Finder"
	set uname to name of home as text
end tell

set desktop_path to "/Users/" & uname & "/Desktop"
set last_screenshot to do shell script "ls -tU " & desktop_path & " | grep -E 'Screen Shot [[:digit:]]{4}-[[:digit:]]{2}-[[:digit:]]{2}' | sed -e 's/\\ /\\%20/g' | head -1"
set last_screenshot_url to "file://" & desktop_path & "/" & last_screenshot

tell application "Quicksilver"
	set selection to last_screenshot_url
end tell