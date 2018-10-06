----------------
-- Add:
----------------
function say2(msg)
	msg_size = string.len(msg)
	if msg_size > 59 then
		local i = 59
		last_word = nil
		while last_word == nil and i > 0 do
			if string.sub(msg,i,i) == " " or string.sub(msg,i,i) == "." or string.sub(msg,i,i) == "," then
				last_word = i
			end
			i = i-1
		end
		if i == 0 then
			last_word = 59
		end
		say(string.sub(msg,0,last_word))
		say2(string.sub(msg,last_word+1))
	else
		say(msg)
	end
end
