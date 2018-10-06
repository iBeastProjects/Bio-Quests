//Find:
//questLocaleFileName

//Add:
			char questBeastAddonFileName[256];
			snprintf(questBeastAddonFileName, sizeof(questBeastAddonFileName), "%s/ibeast_addon.lua", g_stQuestDir.c_str());

			int questBeastAddonLoadingResult = lua_dofile(L, questBeastAddonFileName);
			sys_log(0, "LoadQuestBeastAddon(%s), returns %d", questBeastAddonFileName, questBeastAddonLoadingResult);
			if (questBeastAddonLoadingResult != 0)
			{
				sys_err("LoadQuestBeastAddon(%s) FAILURE", questBeastAddonFileName);
				return false;
			}