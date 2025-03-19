player_manager.AddValidModel( "eli", "models/elisttm/eli/eli.mdl" )
player_manager.AddValidHands( "eli", "models/elisttm/eli/eli_arms.mdl", 0, "0" )
list.Set( "PlayerOptionsModel", "eli", "models/elisttm/eli/eli.mdl" )

local NPC_1 = {	Name = "eli",
				Class = "npc_citizen",
				Model = "models/elisttm/eli/eli.mdl",
				Health = "100",
				KeyValues = { citizentype = 3 },
				Category = "elisttm" }

local NPC_2 = {	Name = "EVIL eli",
				Class = "npc_combine_s",
				Model = "models/elisttm/eli/eli.mdl",
				Health = "100",
				Squadname = "eli",
				Numgrenades = "4",
				Category = "elisttm" }

list.Set( "NPC", "eli_friendly", NPC_1 )
list.Set( "NPC", "eli_evil", NPC_2 )
