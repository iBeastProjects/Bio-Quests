------------
--Add:
------------

-- #################################################################
-- ##                                                             ##
-- ##                     ibeast_addon.LUA                        ##
-- ##															  ##
-- #################################################################
ibeast_addon = {}
ibeast_addon.close = "Close"
ibeast_addon.yes = "Yes"
ibeast_addon.no = "No"

ibeast_addon.biologist = {}
ibeast_addon.biologist.id = 20084 -- Need to be edited in quest too
ibeast_addon.biologist.qf_duration = "duration"
ibeast_addon.biologist.qf_collectcount = "collected"
ibeast_addon.biologist.qf_potion = "potion"
ibeast_addon.biologist.potion_id = 71035 -- Need to be edited in quest too
ibeast_addon.biologist.potion_questname = "researcher_elixir"
ibeast_addon.biologist.potion_notready_text = "You cannot use this elixir yet."
ibeast_addon.biologist.potion_already_used = "You have already used this elixir."
ibeast_addon.biologist.potion_used = "You have successfully activated elixir."
ibeast_addon.biologist.no_item_in_inv = "You need to have atleast one item in inventory. "

ibeast_addon.biologist.biologist_1st = {}
ibeast_addon.biologist.biologist_1st.min_level = 30
ibeast_addon.biologist.biologist_1st.need_item = 30006
ibeast_addon.biologist.biologist_1st.need_count = 10
ibeast_addon.biologist.biologist_1st.need_kill = { 635, 636, 637, }
ibeast_addon.biologist.biologist_1st.chance_max_number = 100 -- Maximal generated value when killed.
ibeast_addon.biologist.biologist_1st.chance_with_potion = 75
ibeast_addon.biologist.biologist_1st.chance_without_potion = 50
ibeast_addon.biologist.biologist_1st.delay = 900*1 -- delay in secs
ibeast_addon.biologist.biologist_1st.need_item_name = "Orc Tooth"
ibeast_addon.biologist.biologist_1st.letter = "Biological research! (" .. ibeast_addon.biologist.biologist_1st.need_item_name .. ")"
ibeast_addon.biologist.biologist_1st.letter_main_quest = "Research - " .. ibeast_addon.biologist.biologist_1st.need_item_name
ibeast_addon.biologist.biologist_1st.letter_text = "The biologist has a task for you, go to him and see what he tells you."
ibeast_addon.biologist.biologist_1st.letter_text_main_quest = "The biologist needs the following item for research. Bring him one piece at a time to get him done."
ibeast_addon.biologist.biologist_1st.introduction = "Okay, you came. I have an important task for you. I need the following item for research. Bring me a few."
ibeast_addon.biologist.biologist_1st.already_found = "You have already found: "
ibeast_addon.biologist.biologist_1st.to_found_left = "You need to found left: "
ibeast_addon.biologist.biologist_1st.submit_button = "Submit " .. ibeast_addon.biologist.biologist_1st.need_item_name
ibeast_addon.biologist.biologist_1st.not_ready_yet = "Sorry, I have not finished my research yet."
ibeast_addon.biologist.biologist_1st.submit_text = "Well done![ENTER]I am going to look at it..."
ibeast_addon.biologist.biologist_1st.not_success = "I am sorry, this piece is bad."
ibeast_addon.biologist.biologist_1st.success = "Nice! This is good piece!"
ibeast_addon.biologist.biologist_1st.complete = "Thank you very much! I have finished this research."
ibeast_addon.biologist.biologist_1st.completed_letter = ibeast_addon.biologist.biologist_1st.letter_main_quest .. " completed."
ibeast_addon.biologist.biologist_1st.completed_letter_text = "Congratulation! You have successfully finished biological research."
ibeast_addon.biologist.biologist_1st.reward = {}
ibeast_addon.biologist.biologist_1st.reward.vnum = {80005,	76036,	} --reward item ids
ibeast_addon.biologist.biologist_1st.reward.count = {1,	5,	} -- count of items above
ibeast_addon.biologist.biologist_1st.reward.bonus = {8,	} --bonus id (from length.h)
ibeast_addon.biologist.biologist_1st.reward.value = {20,	} --bonus value
ibeast_addon.biologist.biologist_1st.reward.time = {60*60*24*365*60,	} --bonus duration

ibeast_addon.biologist.biologist_2nd = {}
ibeast_addon.biologist.biologist_2nd.min_level = 40
ibeast_addon.biologist.biologist_2nd.need_item = 30047
ibeast_addon.biologist.biologist_2nd.need_count = 15
ibeast_addon.biologist.biologist_2nd.need_kill = { 706, 756, 731, 733, 731, }
ibeast_addon.biologist.biologist_2nd.chance_max_number = 100 -- Maximal generated value when killed.
ibeast_addon.biologist.biologist_2nd.chance_with_potion = 75
ibeast_addon.biologist.biologist_2nd.chance_without_potion = 50
ibeast_addon.biologist.biologist_2nd.delay = 900*2 -- delay in secs
ibeast_addon.biologist.biologist_2nd.need_item_name = "Curse Book"
ibeast_addon.biologist.biologist_2nd.letter = "Biological research! (" .. ibeast_addon.biologist.biologist_2nd.need_item_name .. ")"
ibeast_addon.biologist.biologist_2nd.letter_main_quest = "Research - " .. ibeast_addon.biologist.biologist_2nd.need_item_name
ibeast_addon.biologist.biologist_2nd.letter_text = "The biologist has a task for you, go to him and see what he tells you."
ibeast_addon.biologist.biologist_2nd.letter_text_main_quest = "The biologist needs the following item for research. Bring him one piece at a time to get him done."
ibeast_addon.biologist.biologist_2nd.introduction = "Okay, you came. I have an important task for you. I need the following item for research. Bring me a few."
ibeast_addon.biologist.biologist_2nd.already_found = "You have already found: "
ibeast_addon.biologist.biologist_2nd.to_found_left = "You need to found left: "
ibeast_addon.biologist.biologist_2nd.submit_button = "Submit " .. ibeast_addon.biologist.biologist_2nd.need_item_name
ibeast_addon.biologist.biologist_2nd.not_ready_yet = "Sorry, I have not finished my research yet."
ibeast_addon.biologist.biologist_2nd.submit_text = "Well done![ENTER]I am going to look at it..."
ibeast_addon.biologist.biologist_2nd.not_success = "I am sorry, this piece is bad."
ibeast_addon.biologist.biologist_2nd.success = "Nice! This is good piece!"
ibeast_addon.biologist.biologist_2nd.complete = "Thank you very much! I have finished this research."
ibeast_addon.biologist.biologist_2nd.completed_letter = ibeast_addon.biologist.biologist_2nd.letter_main_quest .. " completed."
ibeast_addon.biologist.biologist_2nd.completed_letter_text = "Congratulation! You have successfully finished biological research."
ibeast_addon.biologist.biologist_2nd.reward = {}
ibeast_addon.biologist.biologist_2nd.reward.vnum = {80006,	76036,	} --reward item ids
ibeast_addon.biologist.biologist_2nd.reward.count = {1,	10,	} -- count of items above
ibeast_addon.biologist.biologist_2nd.reward.bonus = {7,	} --bonus id (from length.h)
ibeast_addon.biologist.biologist_2nd.reward.value = {5,	} --bonus value
ibeast_addon.biologist.biologist_2nd.reward.time = {60*60*24*365*60,	} --bonus duration

ibeast_addon.biologist.biologist_3rd = {}
ibeast_addon.biologist.biologist_3rd.min_level = 50
ibeast_addon.biologist.biologist_3rd.need_item = 30015
ibeast_addon.biologist.biologist_3rd.need_count = 15
ibeast_addon.biologist.biologist_3rd.need_kill = { 1001, 1002, 1003, 1004, }
ibeast_addon.biologist.biologist_3rd.chance_max_number = 100 -- Maximal generated value when killed.
ibeast_addon.biologist.biologist_3rd.chance_with_potion = 75
ibeast_addon.biologist.biologist_3rd.chance_without_potion = 50
ibeast_addon.biologist.biologist_3rd.delay = 900*3 -- delay in secs
ibeast_addon.biologist.biologist_3rd.need_item_name = "Demon's Keepsake"
ibeast_addon.biologist.biologist_3rd.letter = "Biological research! (" .. ibeast_addon.biologist.biologist_3rd.need_item_name .. ")"
ibeast_addon.biologist.biologist_3rd.letter_main_quest = "Research - " .. ibeast_addon.biologist.biologist_3rd.need_item_name
ibeast_addon.biologist.biologist_3rd.letter_text = "The biologist has a task for you, go to him and see what he tells you."
ibeast_addon.biologist.biologist_3rd.letter_text_main_quest = "The biologist needs the following item for research. Bring him one piece at a time to get him done."
ibeast_addon.biologist.biologist_3rd.introduction = "Okay, you came. I have an important task for you. I need the following item for research. Bring me a few."
ibeast_addon.biologist.biologist_3rd.already_found = "You have already found: "
ibeast_addon.biologist.biologist_3rd.to_found_left = "You need to found left: "
ibeast_addon.biologist.biologist_3rd.submit_button = "Submit " .. ibeast_addon.biologist.biologist_3rd.need_item_name
ibeast_addon.biologist.biologist_3rd.not_ready_yet = "Sorry, I have not finished my research yet."
ibeast_addon.biologist.biologist_3rd.submit_text = "Well done![ENTER]I am going to look at it..."
ibeast_addon.biologist.biologist_3rd.not_success = "I am sorry, this piece is bad."
ibeast_addon.biologist.biologist_3rd.success = "Nice! This is good piece!"
ibeast_addon.biologist.biologist_3rd.complete = "Thank you very much! I have finished this research."
ibeast_addon.biologist.biologist_3rd.completed_letter = ibeast_addon.biologist.biologist_3rd.letter_main_quest .. " completed."
ibeast_addon.biologist.biologist_3rd.completed_letter_text = "Congratulation! You have successfully finished biological research."
ibeast_addon.biologist.biologist_3rd.reward = {}
ibeast_addon.biologist.biologist_3rd.reward.vnum = {80006,	76036,	} --reward item ids
ibeast_addon.biologist.biologist_3rd.reward.count = {3,	10,	} -- count of items above
ibeast_addon.biologist.biologist_3rd.reward.bonus = {54,	} --bonus id (from length.h)
ibeast_addon.biologist.biologist_3rd.reward.value = {60,	} --bonus value
ibeast_addon.biologist.biologist_3rd.reward.time = {60*60*24*365*60,	} --bonus duration

ibeast_addon.biologist.biologist_4th = {}
ibeast_addon.biologist.biologist_4th.min_level = 60
ibeast_addon.biologist.biologist_4th.need_item = 30050
ibeast_addon.biologist.biologist_4th.need_count = 20
ibeast_addon.biologist.biologist_4th.need_kill = { 1101, 1102, 1103, 1104, 1105, 1106, 1107, }
ibeast_addon.biologist.biologist_4th.chance_max_number = 100 -- Maximal generated value when killed.
ibeast_addon.biologist.biologist_4th.chance_with_potion = 75
ibeast_addon.biologist.biologist_4th.chance_without_potion = 50
ibeast_addon.biologist.biologist_4th.delay = 900*4 -- delay in secs
ibeast_addon.biologist.biologist_4th.need_item_name = "Ice Marble"
ibeast_addon.biologist.biologist_4th.letter = "Biological research! (" .. ibeast_addon.biologist.biologist_4th.need_item_name .. ")"
ibeast_addon.biologist.biologist_4th.letter_main_quest = "Research - " .. ibeast_addon.biologist.biologist_4th.need_item_name
ibeast_addon.biologist.biologist_4th.letter_text = "The biologist has a task for you, go to him and see what he tells you."
ibeast_addon.biologist.biologist_4th.letter_text_main_quest = "The biologist needs the following item for research. Bring him one piece at a time to get him done."
ibeast_addon.biologist.biologist_4th.introduction = "Okay, you came. I have an important task for you. I need the following item for research. Bring me a few."
ibeast_addon.biologist.biologist_4th.already_found = "You have already found: "
ibeast_addon.biologist.biologist_4th.to_found_left = "You need to found left: "
ibeast_addon.biologist.biologist_4th.submit_button = "Submit " .. ibeast_addon.biologist.biologist_4th.need_item_name
ibeast_addon.biologist.biologist_4th.not_ready_yet = "Sorry, I have not finished my research yet."
ibeast_addon.biologist.biologist_4th.submit_text = "Well done![ENTER]I am going to look at it..."
ibeast_addon.biologist.biologist_4th.not_success = "I am sorry, this piece is bad."
ibeast_addon.biologist.biologist_4th.success = "Nice! This is good piece!"
ibeast_addon.biologist.biologist_4th.complete = "Thank you very much! I have finished this research."
ibeast_addon.biologist.biologist_4th.completed_letter = ibeast_addon.biologist.biologist_4th.letter_main_quest .. " completed."
ibeast_addon.biologist.biologist_4th.completed_letter_text = "Congratulation! You have successfully finished biological research."
ibeast_addon.biologist.biologist_4th.reward = {}
ibeast_addon.biologist.biologist_4th.reward.vnum = {80006,	76036,	} --reward item ids
ibeast_addon.biologist.biologist_4th.reward.count = {5,	10,	}-- count of items above
ibeast_addon.biologist.biologist_4th.reward.bonus = {53,	}--bonus id (from length.h)
ibeast_addon.biologist.biologist_4th.reward.value = {50,	}--bonus value
ibeast_addon.biologist.biologist_4th.reward.time = {60*60*24*365*60,	}--bonus duration

ibeast_addon.biologist.biologist_5th = {}
ibeast_addon.biologist.biologist_5th.min_level = 70
ibeast_addon.biologist.biologist_5th.need_item = 30165
ibeast_addon.biologist.biologist_5th.need_count = 25
ibeast_addon.biologist.biologist_5th.need_kill = { 2301, 2302, 2303, 2304, 2305, 2311, 2312, 2313, 2314, 2315, }
ibeast_addon.biologist.biologist_5th.chance_max_number = 100 -- Maximal generated value when killed.
ibeast_addon.biologist.biologist_5th.chance_with_potion = 75
ibeast_addon.biologist.biologist_5th.chance_without_potion = 50
ibeast_addon.biologist.biologist_5th.delay = 900*5 -- delay in secs
ibeast_addon.biologist.biologist_5th.need_item_name = "Zelkova Branch"
ibeast_addon.biologist.biologist_5th.letter = "Biological research! (" .. ibeast_addon.biologist.biologist_5th.need_item_name .. ")"
ibeast_addon.biologist.biologist_5th.letter_main_quest = "Research - " .. ibeast_addon.biologist.biologist_5th.need_item_name
ibeast_addon.biologist.biologist_5th.letter_text = "The biologist has a task for you, go to him and see what he tells you."
ibeast_addon.biologist.biologist_5th.letter_text_main_quest = "The biologist needs the following item for research. Bring him one piece at a time to get him done."
ibeast_addon.biologist.biologist_5th.introduction = "Okay, you came. I have an important task for you. I need the following item for research. Bring me a few."
ibeast_addon.biologist.biologist_5th.already_found = "You have already found: "
ibeast_addon.biologist.biologist_5th.to_found_left = "You need to found left: "
ibeast_addon.biologist.biologist_5th.submit_button = "Submit " .. ibeast_addon.biologist.biologist_5th.need_item_name
ibeast_addon.biologist.biologist_5th.not_ready_yet = "Sorry, I have not finished my research yet."
ibeast_addon.biologist.biologist_5th.submit_text = "Well done![ENTER]I am going to look at it..."
ibeast_addon.biologist.biologist_5th.not_success = "I am sorry, this piece is bad."
ibeast_addon.biologist.biologist_5th.success = "Nice! This is good piece!"
ibeast_addon.biologist.biologist_5th.complete = "Thank you very much! I have finished this research."
ibeast_addon.biologist.biologist_5th.completed_letter = ibeast_addon.biologist.biologist_5th.letter_main_quest .. " completed."
ibeast_addon.biologist.biologist_5th.completed_letter_text = "Congratulation! You have successfully finished biological research."
ibeast_addon.biologist.biologist_5th.reward = {}
ibeast_addon.biologist.biologist_5th.reward.vnum = {80006,	76036,	} --reward item ids
ibeast_addon.biologist.biologist_5th.reward.count = {8,	10,	}-- count of items above
ibeast_addon.biologist.biologist_5th.reward.bonus = {8,	}--bonus id (from length.h)
ibeast_addon.biologist.biologist_5th.reward.value = {11,	}--bonus value
ibeast_addon.biologist.biologist_5th.reward.time = {60*60*24*365*60,	}--bonus duration

ibeast_addon.biologist.biologist_6th = {}
ibeast_addon.biologist.biologist_6th.min_level = 80
ibeast_addon.biologist.biologist_6th.need_item = 30166
ibeast_addon.biologist.biologist_6th.need_count = 30
ibeast_addon.biologist.biologist_6th.need_kill = { 1401, 1402, 1403, 1601, 1602, 1603, }
ibeast_addon.biologist.biologist_6th.chance_max_number = 100 -- Maximal generated value when killed.
ibeast_addon.biologist.biologist_6th.chance_with_potion = 75
ibeast_addon.biologist.biologist_6th.chance_without_potion = 50
ibeast_addon.biologist.biologist_6th.delay = 900*6 -- delay in secs
ibeast_addon.biologist.biologist_6th.need_item_name = "Tugyi's Tablet"
ibeast_addon.biologist.biologist_6th.letter = "Biological research! (" .. ibeast_addon.biologist.biologist_6th.need_item_name .. ")"
ibeast_addon.biologist.biologist_6th.letter_main_quest = "Research - " .. ibeast_addon.biologist.biologist_6th.need_item_name
ibeast_addon.biologist.biologist_6th.letter_text = "The biologist has a task for you, go to him and see what he tells you."
ibeast_addon.biologist.biologist_6th.letter_text_main_quest = "The biologist needs the following item for research. Bring him one piece at a time to get him done."
ibeast_addon.biologist.biologist_6th.introduction = "Okay, you came. I have an important task for you. I need the following item for research. Bring me a few."
ibeast_addon.biologist.biologist_6th.already_found = "You have already found: "
ibeast_addon.biologist.biologist_6th.to_found_left = "You need to found left: "
ibeast_addon.biologist.biologist_6th.submit_button = "Submit " .. ibeast_addon.biologist.biologist_6th.need_item_name
ibeast_addon.biologist.biologist_6th.not_ready_yet = "Sorry, I have not finished my research yet."
ibeast_addon.biologist.biologist_6th.submit_text = "Well done![ENTER]I am going to look at it..."
ibeast_addon.biologist.biologist_6th.not_success = "I am sorry, this piece is bad."
ibeast_addon.biologist.biologist_6th.success = "Nice! This is good piece!"
ibeast_addon.biologist.biologist_6th.complete = "Thank you very much! I have finished this research."
ibeast_addon.biologist.biologist_6th.completed_letter = ibeast_addon.biologist.biologist_6th.letter_main_quest .. " completed."
ibeast_addon.biologist.biologist_6th.completed_letter_text = "Congratulation! You have successfully finished biological research."
ibeast_addon.biologist.biologist_6th.reward = {}
ibeast_addon.biologist.biologist_6th.reward.vnum = {80006,	76036,	}--reward item ids
ibeast_addon.biologist.biologist_6th.reward.count = {10,	10,	}-- count of items above
ibeast_addon.biologist.biologist_6th.reward.bonus = {7,	53,	} --bonus id (from length.h)
ibeast_addon.biologist.biologist_6th.reward.value = {6,	10,	} --bonus value
ibeast_addon.biologist.biologist_6th.reward.time = {60*60*24*365*60,	60*60*24*365*60,	} --bonus duration

ibeast_addon.biologist.biologist_7th = {}
ibeast_addon.biologist.biologist_7th.min_level = 85
ibeast_addon.biologist.biologist_7th.need_item = 30167
ibeast_addon.biologist.biologist_7th.need_count = 40
ibeast_addon.biologist.biologist_7th.need_kill = { 2311, 2312, 2313, 2314, 2315, 2306, }
ibeast_addon.biologist.biologist_7th.chance_max_number = 100 -- Maximal generated value when killed.
ibeast_addon.biologist.biologist_7th.chance_with_potion = 75
ibeast_addon.biologist.biologist_7th.chance_without_potion = 50
ibeast_addon.biologist.biologist_7th.delay = 900*7 -- delay in secs
ibeast_addon.biologist.biologist_7th.need_item_name = "Red Ghost Tree Branch"
ibeast_addon.biologist.biologist_7th.letter = "Biological research! (" .. ibeast_addon.biologist.biologist_7th.need_item_name .. ")"
ibeast_addon.biologist.biologist_7th.letter_main_quest = "Research - " .. ibeast_addon.biologist.biologist_7th.need_item_name
ibeast_addon.biologist.biologist_7th.letter_text = "The biologist has a task for you, go to him and see what he tells you."
ibeast_addon.biologist.biologist_7th.letter_text_main_quest = "The biologist needs the following item for research. Bring him one piece at a time to get him done."
ibeast_addon.biologist.biologist_7th.introduction = "Okay, you came. I have an important task for you. I need the following item for research. Bring me a few."
ibeast_addon.biologist.biologist_7th.already_found = "You have already found: "
ibeast_addon.biologist.biologist_7th.to_found_left = "You need to found left: "
ibeast_addon.biologist.biologist_7th.submit_button = "Submit " .. ibeast_addon.biologist.biologist_7th.need_item_name
ibeast_addon.biologist.biologist_7th.not_ready_yet = "Sorry, I have not finished my research yet."
ibeast_addon.biologist.biologist_7th.submit_text = "Well done![ENTER]I am going to look at it..."
ibeast_addon.biologist.biologist_7th.not_success = "I am sorry, this piece is bad."
ibeast_addon.biologist.biologist_7th.success = "Nice! This is good piece!"
ibeast_addon.biologist.biologist_7th.complete = "Thank you very much! I have finished this research."
ibeast_addon.biologist.biologist_7th.completed_letter = ibeast_addon.biologist.biologist_7th.letter_main_quest .. " completed."
ibeast_addon.biologist.biologist_7th.completed_letter_text = "Congratulation! You have successfully finished biological research."
ibeast_addon.biologist.biologist_7th.reward = {}
ibeast_addon.biologist.biologist_7th.reward.vnum = {80006,	76036,	} --reward item ids
ibeast_addon.biologist.biologist_7th.reward.count = {12,	10,	}-- count of items above
ibeast_addon.biologist.biologist_7th.reward.bonus = {1,	}--bonus id (from length.h)
ibeast_addon.biologist.biologist_7th.reward.value = {2500,	}--bonus value
ibeast_addon.biologist.biologist_7th.reward.time = {60*60*24*365*60,	}--bonus duration

ibeast_addon.biologist.biologist_8th = {}
ibeast_addon.biologist.biologist_8th.min_level = 90
ibeast_addon.biologist.biologist_8th.need_item = 30168
ibeast_addon.biologist.biologist_8th.need_count = 50
ibeast_addon.biologist.biologist_8th.need_kill = { 591, 691, 791, 792, 793, 794, 795, 991, 992, 993, 1091, 1092, 1093, 1094, 1095, 1304, 2291, 2901, 2902, 2903, 2091, 2092, 2093, 2191, 2192, 6414, 2206, 2207, 2306, 2307, 2491, 2492, 2493, 2494, 2495, 5001, 5002, 5004, 5161, 5162, 5163, }
ibeast_addon.biologist.biologist_8th.chance_max_number = 10 -- Maximal generated value when killed.
ibeast_addon.biologist.biologist_8th.chance_with_potion = 75
ibeast_addon.biologist.biologist_8th.chance_without_potion = 50
ibeast_addon.biologist.biologist_8th.delay = 900*8 -- delay in secs
ibeast_addon.biologist.biologist_8th.need_item_name = "Leaders' Notes"
ibeast_addon.biologist.biologist_8th.letter = "Biological research! (" .. ibeast_addon.biologist.biologist_8th.need_item_name .. ")"
ibeast_addon.biologist.biologist_8th.letter_main_quest = "Research - " .. ibeast_addon.biologist.biologist_8th.need_item_name
ibeast_addon.biologist.biologist_8th.letter_text = "The biologist has a task for you, go to him and see what he tells you."
ibeast_addon.biologist.biologist_8th.letter_text_main_quest = "The biologist needs the following item for research. Bring him one piece at a time to get him done."
ibeast_addon.biologist.biologist_8th.introduction = "Okay, you came. I have an important task for you. I need the following item for research. Bring me a few."
ibeast_addon.biologist.biologist_8th.already_found = "You have already found: "
ibeast_addon.biologist.biologist_8th.to_found_left = "You need to found left: "
ibeast_addon.biologist.biologist_8th.submit_button = "Submit " .. ibeast_addon.biologist.biologist_8th.need_item_name
ibeast_addon.biologist.biologist_8th.not_ready_yet = "Sorry, I have not finished my research yet."
ibeast_addon.biologist.biologist_8th.submit_text = "Well done![ENTER]I am going to look at it..."
ibeast_addon.biologist.biologist_8th.not_success = "I am sorry, this piece is bad."
ibeast_addon.biologist.biologist_8th.success = "Nice! This is good piece!"
ibeast_addon.biologist.biologist_8th.complete = "Thank you very much! I have finished this research."
ibeast_addon.biologist.biologist_8th.completed_letter = ibeast_addon.biologist.biologist_8th.letter_main_quest .. " completed."
ibeast_addon.biologist.biologist_8th.completed_letter_text = "Congratulation! You have successfully finished biological research."
ibeast_addon.biologist.biologist_8th.reward = {}
ibeast_addon.biologist.biologist_8th.reward.vnum = {80006,	76036,	} --reward item ids
ibeast_addon.biologist.biologist_8th.reward.count = {15,	10,	} -- count of items above
ibeast_addon.biologist.biologist_8th.reward.bonus = {17,	} --bonus id (from length.h)
ibeast_addon.biologist.biologist_8th.reward.value = {8,	} --bonus value
ibeast_addon.biologist.biologist_8th.reward.time = {60*60*24*365*60,	} --bonus duration
