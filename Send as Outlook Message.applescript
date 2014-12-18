-- Quicksilver handlers
using terms from application "Quicksilver"
	on process text qstext
		-- Create a new Outlook message with content passed in from Quicksilver
		tell application "Microsoft Outlook"
			-- Add a linebreak to the text passed in
			set newmsg to make new outgoing message with properties {content:qstext & "<br>"}
			open newmsg
		end tell
	end process text
	
	on get direct types
		return {"NSStringPboardType"}
	end get direct types
end using terms from