quest researcher_elixir begin
	state start begin
		when 71035.use begin
			if get_time() < pc.getqf(ibeast_addon.biologist.qf_duration) then syschat(item.get_name(ibeast_addon.biologist.potion_id) .. ":" .. " " .. ibeast_addon.biologist.potion_notready_text) return end
			if pc.getqf(ibeast_addon.biologist.qf_potion) == 1 then syschat(item.get_name(ibeast_addon.biologist.potion_id) .. ":" .. " " .. ibeast_addon.biologist.potion_already_used) return end
			
			pc.remove_item(ibeast_addon.biologist.potion_id, 1)	
			pc.setqf(ibeast_addon.biologist.qf_potion,1)
			syschat(item.get_name(ibeast_addon.biologist.potion_id) .. ":" .. " " .. ibeast_addon.biologist.potion_used)
		end --when		
	end --state
end --quest