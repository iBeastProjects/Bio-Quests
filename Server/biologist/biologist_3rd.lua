quest biologist_3rd begin
	state start begin
		when login or levelup with pc.get_level() >= ibeast_addon.biologist.biologist_3rd.min_level begin
			set_state(information)
		end --when
	end --state
	
	state information begin
		when letter begin
			local npc = find_npc_by_vnum(ibeast_addon.biologist.id)
			if npc != 0 then
				target.vid("__TARGET__", npc, mob_name(ibeast_addon.biologist.id))
			end--if
			send_letter(ibeast_addon.biologist.biologist_3rd.letter)
		end --when
		
		when button or info begin
			say_title(ibeast_addon.biologist.biologist_3rd.letter)
			say2(ibeast_addon.biologist.biologist_3rd.letter_text)
		end --when
		
		when __TARGET__.target.click begin
			target.delete("__TARGET__")
			say_title(mob_name(ibeast_addon.biologist.id))
			say2(ibeast_addon.biologist.biologist_3rd.introduction)
			say_item_vnum(ibeast_addon.biologist.biologist_3rd.need_item)
			set_state(main_quest)
			pc.setqf(ibeast_addon.biologist.qf_duration, 0)
			pc.setqf(ibeast_addon.biologist.qf_collectcount, 0)
		end --when
	end --state
	
	state main_quest begin
		when letter begin
			send_letter(ibeast_addon.biologist.biologist_3rd.letter_main_quest)
		end --when
		
		when button or info begin
			say_title(ibeast_addon.biologist.biologist_3rd.letter_main_quest)
			say2(ibeast_addon.biologist.biologist_3rd.letter_text_main_quest)
			say_item_vnum(ibeast_addon.biologist.biologist_3rd.need_item)
			say_reward(ibeast_addon.biologist.biologist_3rd.already_found .. pc.getqf(ibeast_addon.biologist.qf_collectcount) .. "/" .. ibeast_addon.biologist.biologist_3rd.need_count)
		end --when
		
		when kill with not npc.is_pc() begin
			for i = 0, table.getn(ibeast_addon.biologist.biologist_3rd.need_kill) do
				if npc.get_race() == ibeast_addon.biologist.biologist_3rd.need_kill[i] then
					local drop = number(1, ibeast_addon.biologist.biologist_3rd.chance_max_number)
					if drop == 1 then game.drop_item_with_ownership(ibeast_addon.biologist.biologist_3rd.need_item, 1) end
				end --if
			end -- for
		end --when
		
		when 20084.chat.ibeast_addon.biologist.biologist_3rd.submit_button with pc.count_item(ibeast_addon.biologist.biologist_3rd.need_item) > 0 begin
			if(get_time() >= pc.getqf(ibeast_addon.biologist.qf_duration)) then
				say_title(mob_name(ibeast_addon.biologist.id))
				say2(ibeast_addon.biologist.biologist_3rd.submit_text) 
				wait()
				
				local ch = number(1, 100)
				local pass_percent
				if pc.getf(ibeast_addon.biologist.potion_questname, ibeast_addon.biologist.qf_potion) == 1 then pass_percent = ibeast_addon.biologist.biologist_3rd.chance_with_potion end
				if pc.getf(ibeast_addon.biologist.potion_questname, ibeast_addon.biologist.qf_potion) == 0 then pass_percent = ibeast_addon.biologist.biologist_3rd.chance_without_potion end
				if ch <= pass_percent then
					if (pc.getqf(ibeast_addon.biologist.qf_collectcount) + 1 >= ibeast_addon.biologist.biologist_3rd.need_count) then
						pc.setqf(ibeast_addon.biologist.qf_duration, 0)
						pc.setqf(ibeast_addon.biologist.qf_collectcount, 0)
						pc.setf(ibeast_addon.biologist.potion_questname, ibeast_addon.biologist.qf_potion, 0)
						pc.remove_item(ibeast_addon.biologist.biologist_3rd.need_item, 1)
						for i = 1, table.getn(ibeast_addon.biologist.biologist_3rd.reward.vnum) do
							pc.give_item2(ibeast_addon.biologist.biologist_3rd.reward.vnum[i], ibeast_addon.biologist.biologist_3rd.reward.count[i])
						end -- for
						for a = 1, table.getn(ibeast_addon.biologist.biologist_3rd.reward.bonus) do
							affect.add_collect(ibeast_addon.biologist.biologist_3rd.reward.bonus[a], ibeast_addon.biologist.biologist_3rd.reward.value[a], ibeast_addon.biologist.biologist_3rd.reward.time[a])
						end -- for	
						say_title(mob_name(ibeast_addon.biologist.id))
						say2(ibeast_addon.biologist.biologist_3rd.complete)
						set_state(__completion__)
						return
					else
						pc.setqf(ibeast_addon.biologist.qf_collectcount, pc.getqf(ibeast_addon.biologist.qf_collectcount) +1)
						say_title(mob_name(ibeast_addon.biologist.id))
						say2(ibeast_addon.biologist.biologist_3rd.success)
						say_reward(ibeast_addon.biologist.biologist_3rd.to_found_left .. ibeast_addon.biologist.biologist_3rd.need_count - pc.getqf(ibeast_addon.biologist.qf_collectcount))
					end --if
				else
					say_title(mob_name(ibeast_addon.biologist.id))
					say2(ibeast_addon.biologist.biologist_3rd.not_success)
				end --if
				pc.remove_item(ibeast_addon.biologist.biologist_3rd.need_item, 1)
				pc.setqf(ibeast_addon.biologist.qf_duration, get_time() + ibeast_addon.biologist.biologist_3rd.delay)
				pc.setf(ibeast_addon.biologist.potion_questname, ibeast_addon.biologist.qf_potion, 0)
				return
			else
				say_title(mob_name(ibeast_addon.biologist.id))
				say2(ibeast_addon.biologist.biologist_3rd.not_ready_yet)
				return
			end --if
			return
		end --when
	end --state
	
	state __completion__ begin
		when letter begin
			send_letter(ibeast_addon.biologist.biologist_3rd.completed_letter)
		end --when
		
		when info or button begin
			say_title(ibeast_addon.biologist.biologist_3rd.letter_main_quest)
			say2(ibeast_addon.biologist.biologist_3rd.completed_letter_text)			
			set_state(__COMPLETE__)
		end --when
	end --state
	
	state __COMPLETE__ begin
	end --state
	
end	--quest