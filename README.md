# Bio Quests by iBeast
Everything is through setting file (ibeast_addon.lua).﻿
Quests are working with "Researcher's Elixir" (there is bug with removing this item on many servers which does not use my quest).
You ca﻿n simply set up ﻿your own n﻿ew biologist quests﻿ using one of my "temp﻿late" quest.﻿
﻿Y﻿ou can set up: rewards (items, bonuses, ...); ﻿minimal level; needed item (e.g.: Orc Tooth, ...); needed count of that item; ids (mob, item, potion, ...); chances for﻿ success, dialogs (text) and delay﻿﻿﻿



# Tutorials:
(There is also tutorial included in files.)
Tutorial (Server):
1) Upload folder "biologist" in Server folder to your quest folder (e.x.: /home/m2server/srv1/share/locale/english/quest ==>> /home/m2server/srv1/share/locale/english/quest/biologist)
2) Upload file "ibeast_addon.lua" into your quest folder (e.x.: /home/m2server/srv1/share/locale/english/quest)
2.1) Open questlib.lua and add: dofile(get_locale_base_path() .. "/quest/ibeast_addon.lua")
3) Add quests to quest_list
4) Add function "say2" to your questlib.lua