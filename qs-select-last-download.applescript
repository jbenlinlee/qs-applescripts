tell application "Finder"
	set uname to name of home as text
end tell

set dlpath to "/Users/" & uname & "/Downloads"
set lastfn to do shell script "ls -tU " & dlpath & " | sed -e 's/\\ /\\%20/g' | head -1"
set lastfn_url to "file://" & dlpath & "/" & lastfn

tell application "Quicksilver"
	set selection to lastfn_url
end tell