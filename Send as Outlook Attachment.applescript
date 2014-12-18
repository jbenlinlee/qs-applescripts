-- Quicksilver handlers
using terms from application "Quicksilver"
	on open files dObjects
		-- Create a new Outlook message with attachments passed in from Quicksilver
		tell application "Microsoft Outlook"
			set newmsg to make new outgoing message
			
			-- Add attachments if present
			repeat with qsAttachment in dObjects
				tell newmsg
					make new attachment with properties {file:qsAttachment}
				end tell
			end repeat
			
			open newmsg
			activate
		end tell
	end open files
	
	on get direct types
		return {"NSFilenamesPboardType"}
	end get direct types
end using terms from