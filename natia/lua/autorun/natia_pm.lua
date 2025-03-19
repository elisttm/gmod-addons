player_manager.AddValidModel( "natia", "models/elisttm/natia/natia.mdl" )
player_manager.AddValidHands( "natia", "models/elisttm/natia/natia_arms.mdl", 0, "0" )
list.Set( "PlayerOptionsModel", "natia", "models/elisttm/natia/natia.mdl" )


-- npc list

local NPC = {	Name = "friendly natia",
				Class = "npc_citizen",
				Model = "models/elisttm/natia/natia.mdl",
				Health = "150",
				KeyValues = { citizentype = 4 },
				Category = "elisttm" }
list.Set( "NPC", "natia_friendly", NPC )

local NPC = {	Name = "EVIL natia",
				Class = "npc_combine_s",
				Model = "models/elisttm/natia/natia.mdl",
				Health = "150",
				Squadname = "PLAGUE",
				Numgrenades = "4",
				Category = "elisttm" }
list.Set( "NPC", "natia_evil", NPC )